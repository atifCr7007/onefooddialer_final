//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_third_party_delivery_request.g.dart';

/// BookThirdPartyDeliveryRequest
///
/// Properties:
/// * [orderId] - ID of the order to book delivery for
@BuiltValue()
abstract class BookThirdPartyDeliveryRequest implements Built<BookThirdPartyDeliveryRequest, BookThirdPartyDeliveryRequestBuilder> {
  /// ID of the order to book delivery for
  @BuiltValueField(wireName: r'order_id')
  int get orderId;

  BookThirdPartyDeliveryRequest._();

  factory BookThirdPartyDeliveryRequest([void updates(BookThirdPartyDeliveryRequestBuilder b)]) = _$BookThirdPartyDeliveryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookThirdPartyDeliveryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookThirdPartyDeliveryRequest> get serializer => _$BookThirdPartyDeliveryRequestSerializer();
}

class _$BookThirdPartyDeliveryRequestSerializer implements PrimitiveSerializer<BookThirdPartyDeliveryRequest> {
  @override
  final Iterable<Type> types = const [BookThirdPartyDeliveryRequest, _$BookThirdPartyDeliveryRequest];

  @override
  final String wireName = r'BookThirdPartyDeliveryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookThirdPartyDeliveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_id';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BookThirdPartyDeliveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookThirdPartyDeliveryRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookThirdPartyDeliveryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookThirdPartyDeliveryRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

