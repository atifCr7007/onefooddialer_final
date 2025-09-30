import 'package:dio/dio.dart';
import 'package:customer_client/openapi.dart';
import 'package:built_value/serializer.dart';

/// Paginator utility for handling paginated responses
class CustomerPaginator {
  static List items(dynamic payload) {
    if (payload is Map) return (payload['data'] ?? payload['items'] ?? []) as List;
    if (payload is List) return payload;
    return [];
  }

  static int total(dynamic payload) {
    if (payload is Map) return (payload['meta']?['total'] ?? payload['total'] ?? 0) as int;
    return 0;
  }

  static int currentPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['current_page'] ?? payload['current_page'] ?? 1) as int;
    return 1;
  }

  static int perPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['per_page'] ?? payload['per_page'] ?? 10) as int;
    return 10;
  }
}

/// Customer Resource Client
/// Handles all customer-related API operations
class CustomerResourceClient {
  final Dio http;
  final CustomersApi api;

  CustomerResourceClient(this.http, this.api);

  /// Get all customers with optional filtering and pagination
  Future<dynamic> list({
    bool? status,
    int? companyId,
    int? unitId,
    String? search,
    String? orderBy,
    String? orderDir,
    int? page,
    int? perPage,
  }) async {
    try {
      final response = await api.getCustomers(
        status: status,
        companyId: companyId,
        unitId: unitId,
        search: search,
        orderBy: orderBy,
        orderDir: orderDir,
        page: page,
        perPage: perPage,
      );
      return response.data;
    } catch (e) {
      print('Error in list customers: $e');
      rethrow;
    }
  }

  /// Get a single customer by ID
  Future<dynamic> get(int id) async {
    try {
      final response = await api.getCustomerById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get customer: $e');
      rethrow;
    }
  }

  /// Create a new customer
  Future<dynamic> create(Map<String, dynamic> customerData) async {
    try {
      final request = CustomerCreate((b) => b
        ..customerName = customerData['name'] ?? customerData['customer_name'] ?? customerData['customerName']
        ..phone = customerData['phone']
        ..emailAddress = customerData['email'] ?? customerData['email_address'] ?? customerData['emailAddress']
        ..companyId = customerData['company_id'] ?? customerData['companyId']
        ..unitId = customerData['unit_id'] ?? customerData['unitId']
      );
      final response = await api.createCustomer(customerCreate: request);
      return response.data;
    } catch (e) {
      print('Error in create customer: $e');
      rethrow;
    }
  }

  /// Update an existing customer
  Future<dynamic> update(int id, Map<String, dynamic> customerData) async {
    try {
      final request = CustomerUpdate((b) {
        if (customerData.containsKey('name') || customerData.containsKey('customer_name') || customerData.containsKey('customerName')) {
          b.customerName = customerData['name'] ?? customerData['customer_name'] ?? customerData['customerName'];
        }
        if (customerData.containsKey('phone')) {
          b.phone = customerData['phone'];
        }
        if (customerData.containsKey('email') || customerData.containsKey('email_address') || customerData.containsKey('emailAddress')) {
          b.emailAddress = customerData['email'] ?? customerData['email_address'] ?? customerData['emailAddress'];
        }
        if (customerData.containsKey('status')) {
          b.status = customerData['status'];
        }
      });
      final response = await api.updateCustomer(id: id, customerUpdate: request);
      return response.data;
    } catch (e) {
      print('Error in update customer: $e');
      rethrow;
    }
  }

  /// Delete a customer
  Future<dynamic> remove(int id) async {
    try {
      final response = await api.deleteCustomer(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete customer: $e');
      rethrow;
    }
  }
}

/// Customer Address Resource Client
/// Handles customer address management operations
class CustomerAddressResourceClient {
  final Dio http;
  final CustomerAddressesApi api;

  CustomerAddressResourceClient(this.http, this.api);

  /// Create a new address for a customer
  Future<dynamic> create(int customerId, Map<String, dynamic> addressData) async {
    try {
      final request = AddressCreate((b) => b
        ..addressType = addressData['address_type'] ?? addressData['addressType'] ?? 'home'
        ..addressLine1 = addressData['address_line1'] ?? addressData['addressLine1'] ?? addressData['street'] ?? ''
        ..addressLine2 = addressData['address_line2'] ?? addressData['addressLine2']
        ..landmark = addressData['landmark']
        ..city = addressData['city'] ?? ''
        ..state = addressData['state']
        ..country = addressData['country']
        ..pincode = addressData['pincode'] ?? addressData['zip_code'] ?? addressData['zipCode']
        ..latitude = addressData['latitude']
        ..longitude = addressData['longitude']
        ..isDefault = addressData['is_default'] ?? addressData['isDefault'] ?? false
        ..companyId = addressData['company_id'] ?? addressData['companyId']
        ..unitId = addressData['unit_id'] ?? addressData['unitId']
      );
      final response = await api.addCustomerAddress(
        id: customerId,
        addressCreate: request,
      );
      return response.data;
    } catch (e) {
      print('Error in create address: $e');
      rethrow;
    }
  }

  /// Update an existing address
  Future<dynamic> update(int customerId, int addressId, Map<String, dynamic> addressData) async {
    try {
      final request = AddressUpdate((b) {
        if (addressData.containsKey('address_type') || addressData.containsKey('addressType')) {
          b.addressType = addressData['address_type'] ?? addressData['addressType'];
        }
        if (addressData.containsKey('address_line1') || addressData.containsKey('addressLine1') || addressData.containsKey('street')) {
          b.addressLine1 = addressData['address_line1'] ?? addressData['addressLine1'] ?? addressData['street'];
        }
        if (addressData.containsKey('address_line2') || addressData.containsKey('addressLine2')) {
          b.addressLine2 = addressData['address_line2'] ?? addressData['addressLine2'];
        }
        if (addressData.containsKey('landmark')) {
          b.landmark = addressData['landmark'];
        }
        if (addressData.containsKey('city')) {
          b.city = addressData['city'];
        }
        if (addressData.containsKey('state')) {
          b.state = addressData['state'];
        }
        if (addressData.containsKey('country')) {
          b.country = addressData['country'];
        }
        if (addressData.containsKey('pincode') || addressData.containsKey('zip_code') || addressData.containsKey('zipCode')) {
          b.pincode = addressData['pincode'] ?? addressData['zip_code'] ?? addressData['zipCode'];
        }
        if (addressData.containsKey('latitude')) {
          b.latitude = addressData['latitude'];
        }
        if (addressData.containsKey('longitude')) {
          b.longitude = addressData['longitude'];
        }
        if (addressData.containsKey('is_default') || addressData.containsKey('isDefault')) {
          b.isDefault = addressData['is_default'] ?? addressData['isDefault'];
        }
      });
      final response = await api.updateCustomerAddress(
        id: customerId,
        addressId: addressId,
        addressUpdate: request,
      );
      return response.data;
    } catch (e) {
      print('Error in update address: $e');
      rethrow;
    }
  }

  /// Delete an address
  Future<dynamic> remove(int customerId, int addressId) async {
    try {
      final response = await api.deleteCustomerAddress(
        id: customerId,
        addressId: addressId,
      );
      return response.data;
    } catch (e) {
      print('Error in delete address: $e');
      rethrow;
    }
  }
}

/// Factory functions for creating customer resource clients
CustomerResourceClient createCustomerClient(Dio dio, Serializers serializers) {
  final api = CustomersApi(dio, serializers);
  return CustomerResourceClient(dio, api);
}

CustomerAddressResourceClient createCustomerAddressClient(Dio dio, Serializers serializers) {
  final api = CustomerAddressesApi(dio, serializers);
  return CustomerAddressResourceClient(dio, api);
}

