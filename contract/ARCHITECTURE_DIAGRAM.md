# OneFoodDialer - Prism Mock Servers Architecture

## System Architecture Diagram

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         OneFoodDialer Platform                               │
│                    Multi-tenant B2B Cloud Kitchen System                     │
└─────────────────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────────────────┐
│                           Flutter Frontend App                               │
│                     (Customer Ordering + Admin Console)                      │
└────────────────┬────────────────────────────────────────────────────────────┘
                 │
                 │ HTTP/REST API Calls
                 │
┌────────────────▼────────────────────────────────────────────────────────────┐
│                         Kong API Gateway (Future)                            │
│                      Route, Auth, Rate Limit, Transform                      │
└────────────────┬────────────────────────────────────────────────────────────┘
                 │
                 │ Routes to Microservices
                 │
┌────────────────▼────────────────────────────────────────────────────────────┐
│                    PRISM MOCK SERVERS (Development)                          │
│                         13 Microservices Mocked                              │
└─────────────────────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────────────────────┐
│                          Mock Server Instances                                │
├──────────────────────────────────────────────────────────────────────────────┤
│                                                                               │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐             │
│  │  Admin Service  │  │Analytics Service│  │  Auth Service   │             │
│  │   Port: 4010    │  │   Port: 4011    │  │   Port: 4012    │             │
│  │  Dashboard,     │  │  Reports,       │  │  Login,         │             │
│  │  Users, Roles   │  │  Metrics, BI    │  │  Registration   │             │
│  └─────────────────┘  └─────────────────┘  └─────────────────┘             │
│                                                                               │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐             │
│  │Catalogs Service │  │Customer Service │  │Delivery Service │             │
│  │   Port: 4013    │  │   Port: 4014    │  │   Port: 4015    │             │
│  │  Menu Items,    │  │  Profiles,      │  │  Tracking,      │             │
│  │  Categories     │  │  Preferences    │  │  Drivers        │             │
│  └─────────────────┘  └─────────────────┘  └─────────────────┘             │
│                                                                               │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐             │
│  │ Invoice Service │  │ Kitchen Service │  │  Meal Service   │             │
│  │   Port: 4016    │  │   Port: 4017    │  │   Port: 4018    │             │
│  │  Billing,       │  │  Operations,    │  │  Planning,      │             │
│  │  Invoices       │  │  Inventory      │  │  Recipes        │             │
│  └─────────────────┘  └─────────────────┘  └─────────────────┘             │
│                                                                               │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐             │
│  │  Order Service  │  │ Payment Service │  │Quickserver Svc  │             │
│  │   Port: 4019    │  │   Port: 4020    │  │   Port: 4021    │             │
│  │  Management,    │  │  Processing,    │  │  Quick Service  │             │
│  │  Tracking       │  │  Transactions   │  │  Operations     │             │
│  └─────────────────┘  └─────────────────┘  └─────────────────┘             │
│                                                                               │
│  ┌─────────────────┐                                                         │
│  │Subscription Svc │                                                         │
│  │   Port: 4022    │                                                         │
│  │  Plans,         │                                                         │
│  │  Billing Cycles │                                                         │
│  └─────────────────┘                                                         │
│                                                                               │
└──────────────────────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────────────────────┐
│                         Prism Mock Server Features                            │
├──────────────────────────────────────────────────────────────────────────────┤
│                                                                               │
│  ✅ Dynamic Response Generation    ✅ Request Validation                     │
│  ✅ Schema-based Data              ✅ Security Enforcement                   │
│  ✅ OpenAPI 3.0 Compliance         ✅ CORS Support                           │
│  ✅ Bearer Token Auth              ✅ Error Responses                        │
│  ✅ Real-time Logging              ✅ Health Checks                          │
│                                                                               │
└──────────────────────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────────────────────┐
│                         Management & Monitoring                               │
├──────────────────────────────────────────────────────────────────────────────┤
│                                                                               │
│  📜 Scripts:                        📊 Monitoring:                           │
│  • start-prism-servers.sh          • check-prism-servers.sh                 │
│  • stop-prism-servers.sh           • logs/*.log files                       │
│  • check-prism-servers.sh          • PID tracking                           │
│                                                                               │
│  🐳 Docker:                         📚 Documentation:                        │
│  • docker-compose.prism.yml        • README_PRISM_SETUP.md                  │
│  • Health checks configured        • QUICK_REFERENCE.md                     │
│  • Auto-restart enabled            • DEPLOYMENT_REPORT.md                   │
│                                                                               │
└──────────────────────────────────────────────────────────────────────────────┘
```

## Data Flow Diagram

```
┌──────────────┐
│   Flutter    │
│     App      │
└──────┬───────┘
       │
       │ 1. HTTP Request
       │    (GET /orders)
       │
┌──────▼───────────────────────────────────────────────┐
│  Prism Mock Server (Order Service - Port 4019)       │
│                                                       │
│  ┌─────────────────────────────────────────────┐    │
│  │  1. Receive Request                         │    │
│  └────────────┬────────────────────────────────┘    │
│               │                                      │
│  ┌────────────▼────────────────────────────────┐    │
│  │  2. Validate Against OpenAPI Spec           │    │
│  │     • Check path exists                     │    │
│  │     • Validate query params                 │    │
│  │     • Check authentication                  │    │
│  │     • Validate headers                      │    │
│  └────────────┬────────────────────────────────┘    │
│               │                                      │
│  ┌────────────▼────────────────────────────────┐    │
│  │  3. Generate Dynamic Response               │    │
│  │     • Read schema definition                │    │
│  │     • Generate random data                  │    │
│  │     • Apply constraints                     │    │
│  │     • Format response                       │    │
│  └────────────┬────────────────────────────────┘    │
│               │                                      │
│  ┌────────────▼────────────────────────────────┐    │
│  │  4. Log Request/Response                    │    │
│  │     • Write to logs/order_prism.log         │    │
│  │     • Include timestamp                     │    │
│  │     • Log status code                       │    │
│  └────────────┬────────────────────────────────┘    │
│               │                                      │
│  ┌────────────▼────────────────────────────────┐    │
│  │  5. Return Response                         │    │
│  │     • HTTP 200 OK                           │    │
│  │     • JSON payload                          │    │
│  │     • Headers (CORS, Content-Type)          │    │
│  └─────────────────────────────────────────────┘    │
│                                                       │
└───────────────────────┬───────────────────────────────┘
                        │
                        │ 6. Response
                        │    (JSON data)
                        │
                ┌───────▼────────┐
                │   Flutter      │
                │   App          │
                │   (Displays    │
                │    Orders)     │
                └────────────────┘
```

## Deployment Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    Development Environment                       │
└─────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                      Option 1: Shell Scripts                     │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  Host Machine (macOS/Linux)                                     │
│  ├── Prism CLI (npm global)                                     │
│  ├── 13 Background Processes                                    │
│  │   ├── prism mock admin_openapi.yaml -p 4010 -d              │
│  │   ├── prism mock analytics_openapi.yaml -p 4011 -d          │
│  │   ├── ... (11 more)                                         │
│  │   └── prism mock subscription_openapi.yaml -p 4022 -d       │
│  ├── PID Files (logs/*.pid)                                     │
│  └── Log Files (logs/*.log)                                     │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────────┐
│                   Option 2: Docker Compose                       │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  Docker Engine                                                   │
│  └── prism-network (bridge)                                     │
│      ├── prism-admin (container)                                │
│      ├── prism-analytics (container)                            │
│      ├── prism-auth (container)                                 │
│      ├── ... (10 more containers)                               │
│      └── prism-subscription (container)                         │
│                                                                  │
│  Features:                                                       │
│  • Isolated network                                             │
│  • Health checks                                                │
│  • Auto-restart                                                 │
│  • Volume mounts                                                │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

## File Structure

```
contract/
├── OpenAPI Specifications (13 files)
│   ├── admin_openapi.yaml
│   ├── analytics_openapi.yaml
│   ├── auth_openapi.yaml
│   ├── catalogs_openapi.yaml
│   ├── customer_openapi.yaml
│   ├── delivery_openapi.yaml
│   ├── invoice_openapi.yaml
│   ├── kitchen_openapi.yaml
│   ├── meal_openapi.yaml
│   ├── order_openapi.yaml          ← Modified (added schemas)
│   ├── payment_openapi.yaml
│   ├── quickserver_openapi.yaml
│   └── subscription_openapi.yaml
│
├── Configuration Files
│   └── docker-compose.prism.yml    ← Docker Compose config
│
├── Management Scripts
│   ├── start-prism-servers.sh      ← Start all servers
│   ├── stop-prism-servers.sh       ← Stop all servers
│   └── check-prism-servers.sh      ← Health check
│
├── Documentation
│   ├── README_PRISM_SETUP.md       ← Setup guide
│   ├── QUICK_REFERENCE.md          ← Quick reference
│   ├── PRISM_MOCK_SERVERS_SUMMARY.md ← Detailed summary
│   ├── DEPLOYMENT_REPORT.md        ← Final report
│   └── ARCHITECTURE_DIAGRAM.md     ← This file
│
├── Testing
│   └── OneFoodDialer_Prism_Mocks.postman_collection.json
│
└── Runtime Files
    └── logs/
        ├── admin_prism.log
        ├── admin_prism.pid
        ├── ... (26 files total)
        └── subscription_prism.pid
```

## Technology Stack

```
┌─────────────────────────────────────────────────────────────────┐
│                       Technology Stack                           │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  Mock Server:                                                    │
│  • Prism CLI (@stoplight/prism-cli)                             │
│  • Version: Latest                                              │
│  • Node.js based                                                │
│                                                                  │
│  Specifications:                                                 │
│  • OpenAPI 3.0                                                  │
│  • YAML format                                                  │
│  • JSON Schema validation                                       │
│                                                                  │
│  Containerization:                                              │
│  • Docker                                                       │
│  • Docker Compose                                               │
│  • stoplight/prism:latest image                                │
│                                                                  │
│  Scripting:                                                     │
│  • Bash/Zsh                                                     │
│  • Shell scripts                                                │
│                                                                  │
│  Testing:                                                       │
│  • Postman                                                      │
│  • cURL                                                         │
│  • HTTP clients                                                 │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

## Security Model

```
┌─────────────────────────────────────────────────────────────────┐
│                      Security Architecture                       │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  Authentication Schemes:                                         │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  bearerAuth (Admin JWT)                                  │  │
│  │  • Used for admin operations                            │  │
│  │  • Format: Bearer <token>                               │  │
│  └──────────────────────────────────────────────────────────┘  │
│                                                                  │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  customerAuth (Customer JWT)                             │  │
│  │  • Used for customer operations                         │  │
│  │  • Format: Bearer <token>                               │  │
│  └──────────────────────────────────────────────────────────┘  │
│                                                                  │
│  ┌──────────────────────────────────────────────────────────┐  │
│  │  restaurantAuth (Restaurant JWT)                         │  │
│  │  • Used for restaurant operations                       │  │
│  │  • Format: Bearer <token>                               │  │
│  └──────────────────────────────────────────────────────────┘  │
│                                                                  │
│  Validation:                                                     │
│  • Prism validates presence of Authorization header             │
│  • Returns 401 if missing                                       │
│  • Mock mode: accepts any token value                           │
│  • Production: integrate with Onesso/Keycloak                   │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

**Legend:**
- ✅ = Implemented and working
- 🔄 = In progress / To be implemented
- ⚠️ = Requires attention
- 📜 = Script/Automation
- 📊 = Monitoring/Logging
- 🐳 = Docker/Container
- 📚 = Documentation

