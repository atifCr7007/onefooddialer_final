import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ThirdPartyDeliveryApi
void main() {
  final instance = Openapi().getThirdPartyDeliveryApi();

  group(ThirdPartyDeliveryApi, () {
    // Book third-party delivery
    //
    // Book a delivery with a third-party delivery service
    //
    //Future<BookThirdPartyDelivery200Response> bookThirdPartyDelivery(BookThirdPartyDeliveryRequest bookThirdPartyDeliveryRequest) async
    test('test bookThirdPartyDelivery', () async {
      // TODO
    });

    // Cancel third-party delivery
    //
    // Cancel a delivery with a third-party delivery service
    //
    //Future<CancelThirdPartyDelivery200Response> cancelThirdPartyDelivery(int orderId) async
    test('test cancelThirdPartyDelivery', () async {
      // TODO
    });

    // Get third-party delivery status
    //
    // Get the status of a delivery from a third-party delivery service
    //
    //Future<GetThirdPartyDeliveryStatus200Response> getThirdPartyDeliveryStatus(int orderId) async
    test('test getThirdPartyDeliveryStatus', () async {
      // TODO
    });

  });
}
