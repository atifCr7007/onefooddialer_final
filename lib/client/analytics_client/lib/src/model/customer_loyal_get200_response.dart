//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:analytics_client/src/model/loyal_customer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_loyal_get200_response.g.dart';

/// CustomerLoyalGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class CustomerLoyalGet200Response implements Built<CustomerLoyalGet200Response, CustomerLoyalGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<LoyalCustomer>? get data;

  CustomerLoyalGet200Response._();

  factory CustomerLoyalGet200Response([void updates(CustomerLoyalGet200ResponseBuilder b)]) = _$CustomerLoyalGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerLoyalGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerLoyalGet200Response> get serializer => _$CustomerLoyalGet200ResponseSerializer();
}

class _$CustomerLoyalGet200ResponseSerializer implements PrimitiveSerializer<CustomerLoyalGet200Response> {
  @override
  final Iterable<Type> types = const [CustomerLoyalGet200Response, _$CustomerLoyalGet200Response];

  @override
  final String wireName = r'CustomerLoyalGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerLoyalGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(LoyalCustomer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerLoyalGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerLoyalGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LoyalCustomer)]),
          ) as BuiltList<LoyalCustomer>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerLoyalGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerLoyalGet200ResponseBuilder();
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

