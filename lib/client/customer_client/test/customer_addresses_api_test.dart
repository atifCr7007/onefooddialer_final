import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CustomerAddressesApi
void main() {
  final instance = Openapi().getCustomerAddressesApi();

  group(CustomerAddressesApi, () {
    // Add an address to a customer
    //
    // Adds a new address to a customer
    //
    //Future<AddCustomerAddress201Response> addCustomerAddress(int id, AddressCreate addressCreate) async
    test('test addCustomerAddress', () async {
      // TODO
    });

    // Delete a customer address
    //
    // Deletes a customer address from the system
    //
    //Future<DeleteCustomerAddress200Response> deleteCustomerAddress(int id, int addressId) async
    test('test deleteCustomerAddress', () async {
      // TODO
    });

    // Update a customer address
    //
    // Updates an existing customer address
    //
    //Future<UpdateCustomerAddress200Response> updateCustomerAddress(int id, int addressId, AddressUpdate addressUpdate) async
    test('test updateCustomerAddress', () async {
      // TODO
    });

  });
}
