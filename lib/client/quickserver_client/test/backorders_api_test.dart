import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for BackordersApi
void main() {
  final instance = Openapi().getBackordersApi();

  group(BackordersApi, () {
    // Cancel a backorder
    //
    // Marks a backorder as cancelled
    //
    //Future<CancelBackorder200Response> cancelBackorder(int id) async
    test('test cancelBackorder', () async {
      // TODO
    });

    // Complete a backorder
    //
    // Marks a backorder as completed
    //
    //Future<CompleteBackorder200Response> completeBackorder(int id) async
    test('test completeBackorder', () async {
      // TODO
    });

    // Create a new backorder
    //
    // Creates a new backorder with the provided data
    //
    //Future<CreateBackorder200Response> createBackorder(BackorderCreate backorderCreate) async
    test('test createBackorder', () async {
      // TODO
    });

    // Create a backorder from an order
    //
    // Creates a new backorder from an existing order
    //
    //Future<CreateBackorderFromOrder200Response> createBackorderFromOrder(CreateBackorderFromOrderRequest createBackorderFromOrderRequest) async
    test('test createBackorderFromOrder', () async {
      // TODO
    });

    // Delete backorder
    //
    // Deletes an existing backorder
    //
    //Future<DeleteBackorder200Response> deleteBackorder(int id) async
    test('test deleteBackorder', () async {
      // TODO
    });

    // Get backorder by ID
    //
    // Returns a single backorder by ID
    //
    //Future<GetBackorderById200Response> getBackorderById(int id) async
    test('test getBackorderById', () async {
      // TODO
    });

    // Get all backorders
    //
    // Returns a list of all backorders with optional filtering
    //
    //Future<GetBackorders200Response> getBackorders({ int customerId, int orderId, int productId, String status, Date orderDate, Date startDate, Date endDate }) async
    test('test getBackorders', () async {
      // TODO
    });

    // Update backorder
    //
    // Updates an existing backorder
    //
    //Future<UpdateBackorder200Response> updateBackorder(int id, BackorderUpdate backorderUpdate) async
    test('test updateBackorder', () async {
      // TODO
    });

  });
}
