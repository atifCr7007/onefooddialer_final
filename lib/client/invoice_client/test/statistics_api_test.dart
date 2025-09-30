import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for StatisticsApi
void main() {
  final instance = Openapi().getStatisticsApi();

  group(StatisticsApi, () {
    // Get invoice statistics
    //
    // Retrieve invoice statistics and metrics
    //
    //Future<InvoicesStatisticsGet200Response> invoicesStatisticsGet({ int companyId, Date dateFrom, Date dateTo }) async
    test('test invoicesStatisticsGet', () async {
      // TODO
    });

  });
}
