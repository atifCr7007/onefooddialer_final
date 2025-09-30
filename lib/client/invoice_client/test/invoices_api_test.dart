import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for InvoicesApi
void main() {
  final instance = Openapi().getInvoicesApi();

  group(InvoicesApi, () {
    // List invoices
    //
    // Retrieve a paginated list of invoices with optional filtering
    //
    //Future<InvoicesGet200Response> invoicesGet({ int customerId, String status, String type, int companyId, Date dateFrom, Date dateTo, int perPage }) async
    test('test invoicesGet', () async {
      // TODO
    });

    // Delete invoice
    //
    // Soft delete an invoice
    //
    //Future<InvoicesIdDelete200Response> invoicesIdDelete(int id) async
    test('test invoicesIdDelete', () async {
      // TODO
    });

    // Get invoice
    //
    // Retrieve a specific invoice by ID
    //
    //Future<InvoicesIdGet200Response> invoicesIdGet(int id) async
    test('test invoicesIdGet', () async {
      // TODO
    });

    // Mark invoice as paid
    //
    // Mark an invoice as paid with payment details
    //
    //Future<InvoicesIdMarkPaidPost200Response> invoicesIdMarkPaidPost(int id, { InvoicesIdMarkPaidPostRequest invoicesIdMarkPaidPostRequest }) async
    test('test invoicesIdMarkPaidPost', () async {
      // TODO
    });

    // Download invoice PDF
    //
    // Generate and download invoice as PDF
    //
    //Future<Uint8List> invoicesIdPdfGet(int id, { bool download }) async
    test('test invoicesIdPdfGet', () async {
      // TODO
    });

    // Update invoice
    //
    // Update invoice status and related information
    //
    //Future<InvoicesIdPut200Response> invoicesIdPut(int id, UpdateInvoiceRequest updateInvoiceRequest) async
    test('test invoicesIdPut', () async {
      // TODO
    });

    // Create invoice
    //
    // Create a new invoice with items
    //
    //Future<InvoicesPost201Response> invoicesPost(CreateInvoiceRequest createInvoiceRequest) async
    test('test invoicesPost', () async {
      // TODO
    });

  });
}
