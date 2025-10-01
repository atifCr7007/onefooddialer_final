# Catalogs Microservice Integration Rules

## Overview
The Catalogs microservice manages product catalog data for OneFoodDialer. It provides CRUD operations for products with filtering capabilities by food type, kitchen, category, and status.

## API Endpoints

### Base URL
- **Development**: `http://localhost:8009/api/v2`
- **Production**: TBD

### Authentication
All endpoints require Bearer token authentication via Onesso/Keycloak.

---

## Endpoints Documentation

### 1. Get All Products
**GET** `/catalogue/products`

Retrieves a paginated list of all products with optional filtering.

**Query Parameters**:
- `food_type` (string, optional) - Filter by food type
- `kitchen_id` (integer, optional) - Filter by kitchen ID
- `status` (boolean, optional) - Filter by active/inactive status
- `product_category_id` (integer, optional) - Filter by category ID
- `page` (integer, optional, default: 1) - Page number
- `per_page` (integer, optional, default: 15) - Items per page

**Response**: `CatalogueProductsGet200Response`
```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "Margherita Pizza",
      "description": "Classic pizza with tomato and mozzarella",
      "price": 12.99,
      "food_type": "Italian",
      "kitchen_id": 1,
      "product_category_id": 1,
      "status": true,
      "image_url": "https://example.com/pizza.jpg",
      "created_at": "2025-01-01T00:00:00Z",
      "updated_at": "2025-01-01T00:00:00Z"
    }
  ],
  "meta": {
    "current_page": 1,
    "per_page": 15,
    "total": 50
  }
}
```

---

### 2. Get Product by ID
**GET** `/catalogue/products/{id}`

Retrieves a single product by its ID.

**Path Parameters**:
- `id` (integer, required) - Product ID

**Response**: `CatalogueProductsIdGet200Response`
```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "Margherita Pizza",
    "description": "Classic pizza with tomato and mozzarella",
    "price": 12.99,
    "food_type": "Italian",
    "kitchen_id": 1,
    "product_category_id": 1,
    "status": true,
    "image_url": "https://example.com/pizza.jpg",
    "created_at": "2025-01-01T00:00:00Z",
    "updated_at": "2025-01-01T00:00:00Z"
  }
}
```

---

### 3. Create Product
**POST** `/catalogue/products`

Creates a new product in the catalog.

**Request Body**: `CatalogueProduct`
```json
{
  "name": "Chicken Burger",
  "description": "Grilled chicken burger with lettuce and tomato",
  "price": 8.99,
  "food_type": "American",
  "kitchen_id": 2,
  "product_category_id": 2,
  "status": true,
  "image_url": "https://example.com/burger.jpg"
}
```

**Response**: `CatalogueProductsPost200Response`
```json
{
  "success": true,
  "message": "Product created successfully",
  "data": {
    "id": 6,
    "name": "Chicken Burger",
    ...
  }
}
```

---

### 4. Update Product
**PUT** `/catalogue/products/{id}`

Updates an existing product.

**Path Parameters**:
- `id` (integer, required) - Product ID

**Request Body**: `CatalogueProduct`
```json
{
  "name": "Chicken Burger Deluxe",
  "description": "Premium grilled chicken burger",
  "price": 10.99,
  "food_type": "American",
  "kitchen_id": 2,
  "product_category_id": 2,
  "status": true,
  "image_url": "https://example.com/burger-deluxe.jpg"
}
```

**Response**: `CatalogueProductsIdPut200Response`
```json
{
  "success": true,
  "message": "Product updated successfully",
  "data": {
    "id": 6,
    "name": "Chicken Burger Deluxe",
    ...
  }
}
```

---

### 5. Delete Product
**DELETE** `/catalogue/products/{id}`

Deletes a product from the catalog.

**Path Parameters**:
- `id` (integer, required) - Product ID

**Response**: `CatalogueProductsIdDelete200Response`
```json
{
  "success": true,
  "message": "Product deleted successfully"
}
```

---

## Resource Client Usage

### Import
```dart
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/catalogs_resource_clients.dart';
import 'package:catalogs_client/catalogs_client.dart';
```

### Initialize Client
```dart
final dio = Dio(BaseOptions(
  baseUrl: 'http://localhost:8009/api/v2',
  headers: {'Content-Type': 'application/json'},
));
final serializers = standardSerializers;
final catalogsClient = createCatalogsClient(dio, serializers);
```

### Example Usage

#### Get All Products
```dart
final response = await catalogsClient.getAllProducts(
  foodType: 'Italian',
  status: true,
  page: 1,
  perPage: 10,
);
```

#### Get Product by ID
```dart
final response = await catalogsClient.getProductById(1);
```

#### Create Product
```dart
final newProduct = CatalogueProduct((b) => b
  ..name = 'Caesar Salad'
  ..description = 'Fresh romaine lettuce with Caesar dressing'
  ..price = 7.99
  ..foodType = 'Salad'
  ..kitchenId = 1
  ..productCategoryId = 3
  ..status = true
  ..imageUrl = 'https://example.com/salad.jpg'
);

final response = await catalogsClient.createProduct(newProduct);
```

#### Update Product
```dart
final updatedProduct = CatalogueProduct((b) => b
  ..name = 'Caesar Salad Premium'
  ..price = 9.99
  // ... other fields
);

final response = await catalogsClient.updateProduct(1, updatedProduct);
```

#### Delete Product
```dart
final response = await catalogsClient.deleteProduct(1);
```

---

## Helper Methods

The resource client includes helper methods for common queries:

### Get Products by Food Type
```dart
final italianProducts = await catalogsClient.getProductsByFoodType('Italian');
```

### Get Products by Kitchen
```dart
final kitchenProducts = await catalogsClient.getProductsByKitchen(1);
```

### Get Products by Category
```dart
final categoryProducts = await catalogsClient.getProductsByCategory(2);
```

### Get Active Products
```dart
final activeProducts = await catalogsClient.getActiveProducts();
```

### Get Inactive Products
```dart
final inactiveProducts = await catalogsClient.getInactiveProducts();
```

---

## Mock Server

### Location
`lib/mock_server/catalogs_mock_server.dart`

### Port
8009

### Base Path
`/api/v2`

### Sample Data
The mock server includes 5 sample products:
1. Margherita Pizza (Italian)
2. Chicken Burger (American)
3. Caesar Salad (Salad)
4. Pasta Carbonara (Italian)
5. Veggie Wrap (Healthy)

### Start Mock Server
```bash
dart run lib/mock_server/catalogs_mock_server.dart
```

### Test Endpoints
```bash
# Get all products
curl http://localhost:8009/api/v2/catalogue/products

# Get product by ID
curl http://localhost:8009/api/v2/catalogue/products/1

# Filter by food type
curl "http://localhost:8009/api/v2/catalogue/products?food_type=Italian"

# Filter by kitchen
curl "http://localhost:8009/api/v2/catalogue/products?kitchen_id=1"

# Filter by status
curl "http://localhost:8009/api/v2/catalogue/products?status=true"

# Create product
curl -X POST http://localhost:8009/api/v2/catalogue/products \
  -H "Content-Type: application/json" \
  -d '{"name":"New Product","price":15.99,"food_type":"Italian","kitchen_id":1,"product_category_id":1,"status":true}'

# Update product
curl -X PUT http://localhost:8009/api/v2/catalogue/products/1 \
  -H "Content-Type: application/json" \
  -d '{"name":"Updated Product","price":19.99,"food_type":"Italian","kitchen_id":1,"product_category_id":1,"status":true}'

# Delete product
curl -X DELETE http://localhost:8009/api/v2/catalogue/products/1
```

---

## Admin Navigation

### Menu Structure
```
Catalog Service
└── Products → /features/catalogs
```

### Configuration
Located in `lib/admin/providers/navigation_provider.dart`:
```dart
MicroserviceConfig(
  id: 'catalogs',
  name: 'Catalog Service',
  icon: Icons.category,
  clientPath: 'catalogs_client',
  features: [
    FeatureConfig(
      id: 'products',
      name: 'Products',
      route: '/features/catalogs',
      icon: Icons.shopping_bag,
    ),
  ],
),
```

---

## Testing

### Unit Tests
Test the resource client methods:
```dart
test('getAllProducts returns products', () async {
  final response = await catalogsClient.getAllProducts();
  expect(response, isNotNull);
  expect(response?.success, isTrue);
});
```

### Integration Tests
Test with mock server:
```dart
test('create and retrieve product', () async {
  // Create
  final newProduct = CatalogueProduct(...);
  final createResponse = await catalogsClient.createProduct(newProduct);
  final productId = createResponse?.data?.id;
  
  // Retrieve
  final getResponse = await catalogsClient.getProductById(productId!);
  expect(getResponse?.data?.name, equals(newProduct.name));
});
```

---

## Error Handling

All methods include try-catch blocks and rethrow errors:
```dart
try {
  final response = await catalogsClient.getAllProducts();
  // Handle success
} catch (e) {
  // Handle error
  print('Error fetching products: $e');
}
```

---

## Notes

- All IDs are `int` type
- Product prices are `double` type
- Status is `boolean` (true = active, false = inactive)
- The API supports pagination for list endpoints
- Filtering can be combined (e.g., food_type + status)
- The mock server persists data in memory only (resets on restart)

---

**Last Updated**: October 1, 2025
**Status**: Fully integrated and tested
**Mock Server**: Running on port 8009

