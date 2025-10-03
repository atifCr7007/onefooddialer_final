# Prism Mock Servers Setup for OneFoodDialer

This directory contains configuration and scripts to run Prism mock servers for all OneFoodDialer microservices.

## Overview

Prism is an HTTP mock server that simulates APIs based on OpenAPI specifications. This setup provides mock servers for all 13 microservices in the OneFoodDialer platform.

## Microservices & Port Mapping

| Service       | Port | OpenAPI File                  | Mock URL                      |
|---------------|------|-------------------------------|-------------------------------|
| Admin         | 4010 | admin_openapi.yaml            | http://localhost:4010         |
| Analytics     | 4011 | analytics_openapi.yaml        | http://localhost:4011         |
| Auth          | 4012 | auth_openapi.yaml             | http://localhost:4012         |
| Catalogs      | 4013 | catalogs_openapi.yaml         | http://localhost:4013         |
| Customer      | 4014 | customer_openapi.yaml         | http://localhost:4014         |
| Delivery      | 4015 | delivery_openapi.yaml         | http://localhost:4015         |
| Invoice       | 4016 | invoice_openapi.yaml          | http://localhost:4016         |
| Kitchen       | 4017 | kitchen_openapi.yaml          | http://localhost:4017         |
| Meal          | 4018 | meal_openapi.yaml             | http://localhost:4018         |
| Order         | 4019 | order_openapi.yaml            | http://localhost:4019         |
| Payment       | 4020 | payment_openapi.yaml          | http://localhost:4020         |
| Quickserver   | 4021 | quickserver_openapi.yaml      | http://localhost:4021         |
| Subscription  | 4022 | subscription_openapi.yaml     | http://localhost:4022         |

## Prerequisites

### Option 1: Using Shell Scripts (Recommended for Development)

1. **Node.js and npm** must be installed
2. **Prism CLI** will be auto-installed by the script, or install manually:
   ```bash
   npm install -g @stoplight/prism-cli
   ```

### Option 2: Using Docker Compose (Recommended for CI/CD)

1. **Docker** and **Docker Compose** must be installed

## Quick Start

### Using Shell Scripts

1. **Navigate to the contract directory:**
   ```bash
   cd contract
   ```

2. **Make scripts executable:**
   ```bash
   chmod +x start-prism-servers.sh stop-prism-servers.sh check-prism-servers.sh
   ```

3. **Start all mock servers:**
   ```bash
   ./start-prism-servers.sh
   ```

4. **Check server status:**
   ```bash
   ./check-prism-servers.sh
   ```

5. **Stop all mock servers:**
   ```bash
   ./stop-prism-servers.sh
   ```

### Using Docker Compose

1. **Navigate to the contract directory:**
   ```bash
   cd contract
   ```

2. **Start all mock servers:**
   ```bash
   docker-compose -f docker-compose.prism.yml up -d
   ```

3. **Check server status:**
   ```bash
   docker-compose -f docker-compose.prism.yml ps
   ```

4. **View logs:**
   ```bash
   docker-compose -f docker-compose.prism.yml logs -f
   ```

5. **Stop all mock servers:**
   ```bash
   docker-compose -f docker-compose.prism.yml down
   ```

## Features

- **Dynamic Response Generation**: All servers run with `-d` flag for realistic random data
- **Request Validation**: Validates incoming requests against OpenAPI specs
- **Automatic Logging**: Logs are stored in `logs/` directory (shell script mode)
- **Health Checks**: Built-in health checks for all services (Docker mode)
- **Easy Management**: Simple scripts to start, stop, and check all servers

## Testing the Mock Servers

### Example: Test Admin Service

```bash
# Get admin dashboard data
curl http://localhost:4010/api/admin/dashboard

# List users
curl http://localhost:4010/api/admin/users
```

### Example: Test Auth Service

```bash
# Login endpoint
curl -X POST http://localhost:4012/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email": "test@example.com", "password": "password123"}'
```

### Example: Test Kitchen Service

```bash
# List kitchens
curl http://localhost:4017/api/kitchens

# Get kitchen by ID
curl http://localhost:4017/api/kitchens/1
```

## Logs and Debugging

### Shell Script Mode

- Logs are stored in `contract/logs/` directory
- Each service has its own log file: `{service_name}_prism.log`
- PID files are stored as: `{service_name}_prism.pid`

**View logs:**
```bash
tail -f logs/admin_prism.log
tail -f logs/kitchen_prism.log
```

### Docker Mode

**View all logs:**
```bash
docker-compose -f docker-compose.prism.yml logs -f
```

**View specific service logs:**
```bash
docker-compose -f docker-compose.prism.yml logs -f prism-admin
docker-compose -f docker-compose.prism.yml logs -f prism-kitchen
```

## Troubleshooting

### Port Already in Use

If you get "port already in use" errors:

**Shell Script Mode:**
```bash
# Stop all Prism servers
./stop-prism-servers.sh

# Or manually kill processes
pkill -f "prism mock"

# Check what's using a specific port
lsof -i :4010
```

**Docker Mode:**
```bash
# Stop and remove containers
docker-compose -f docker-compose.prism.yml down

# Check what's using a specific port
lsof -i :4010
```

### Server Not Starting

1. Check the OpenAPI YAML file is valid
2. Review logs for specific error messages
3. Ensure Prism CLI is properly installed: `prism --version`
4. Try starting a single server manually:
   ```bash
   prism mock admin_openapi.yaml -p 4010 -d
   ```

### Invalid OpenAPI Specification

If Prism reports invalid OpenAPI spec:
1. Validate your YAML file using online validators
2. Check for syntax errors in the YAML
3. Ensure all references ($ref) are valid

## Integration with Flutter App

Update your Flutter app's API base URLs to point to the mock servers:

```dart
// lib/config/api_config.dart
class ApiConfig {
  static const String adminBaseUrl = 'http://localhost:4010';
  static const String analyticsBaseUrl = 'http://localhost:4011';
  static const String authBaseUrl = 'http://localhost:4012';
  static const String catalogsBaseUrl = 'http://localhost:4013';
  static const String customerBaseUrl = 'http://localhost:4014';
  static const String deliveryBaseUrl = 'http://localhost:4015';
  static const String invoiceBaseUrl = 'http://localhost:4016';
  static const String kitchenBaseUrl = 'http://localhost:4017';
  static const String mealBaseUrl = 'http://localhost:4018';
  static const String orderBaseUrl = 'http://localhost:4019';
  static const String paymentBaseUrl = 'http://localhost:4020';
  static const String quickserverBaseUrl = 'http://localhost:4021';
  static const String subscriptionBaseUrl = 'http://localhost:4022';
}
```

## Advanced Usage

### Custom Examples in OpenAPI

You can add custom examples to your OpenAPI specs for more realistic responses:

```yaml
components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: integer
          example: 123
        name:
          type: string
          example: "John Doe"
        email:
          type: string
          example: "john.doe@example.com"
```

### Proxy Mode

To use Prism as a proxy to validate requests/responses against real backend:

```bash
prism proxy admin_openapi.yaml https://api.onefooddialer.com -p 4010
```

## CI/CD Integration

### GitHub Actions Example

```yaml
- name: Start Prism Mock Servers
  run: |
    cd contract
    docker-compose -f docker-compose.prism.yml up -d
    sleep 10
    docker-compose -f docker-compose.prism.yml ps

- name: Run Integration Tests
  run: flutter test integration_test/

- name: Stop Prism Mock Servers
  run: |
    cd contract
    docker-compose -f docker-compose.prism.yml down
```

## Limitations

- **No Persistence**: Mock servers don't persist data between requests
- **No Business Logic**: Only returns mock data based on schemas
- **Stateful Flows**: Complex stateful workflows require custom handling
- **Authentication**: Mock servers don't enforce real authentication

## Support

For issues or questions:
1. Check Prism documentation: https://stoplight.io/open-source/prism
2. Review OpenAPI specifications for errors
3. Check logs for detailed error messages
4. Validate OpenAPI files: https://editor.swagger.io/

## License

This setup is part of the OneFoodDialer project.

