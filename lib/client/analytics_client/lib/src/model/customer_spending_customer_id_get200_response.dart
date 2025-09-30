//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/customer_spending.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_spending_customer_id_get200_response.g.dart';

/// CustomerSpendingCustomerIdGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class CustomerSpendingCustomerIdGet200Response implements Built<CustomerSpendingCustomerIdGet200Response, CustomerSpendingCustomerIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<CustomerSpending>? get data;

  CustomerSpendingCustomerIdGet200Response._();

  factory CustomerSpendingCustomerIdGet200Response([void updates(CustomerSpendingCustomerIdGet200ResponseBuilder b)]) = _$CustomerSpendingCustomerIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerSpendingCustomerIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerSpendingCustomerIdGet200Response> get serializer => _$CustomerSpendingCustomerIdGet200ResponseSerializer();
}

class _$CustomerSpendingCustomerIdGet200ResponseSerializer implements PrimitiveSerializer<CustomerSpendingCustomerIdGet200Response> {
  @override
  final Iterable<Type> types = const [CustomerSpendingCustomerIdGet200Response, _$CustomerSpendingCustomerIdGet200Response];

  @override
  final String wireName = r'CustomerSpendingCustomerIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerSpendingCustomerIdGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(CustomerSpending)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerSpendingCustomerIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerSpendingCustomerIdGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(CustomerSpending)]),
          ) as BuiltList<CustomerSpending>;
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
  CustomerSpendingCustomerIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerSpendingCustomerIdGet200ResponseBuilder();
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

