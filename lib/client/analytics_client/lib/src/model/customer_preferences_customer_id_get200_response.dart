//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:analytics_client/src/model/customer_preference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_preferences_customer_id_get200_response.g.dart';

/// CustomerPreferencesCustomerIdGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class CustomerPreferencesCustomerIdGet200Response implements Built<CustomerPreferencesCustomerIdGet200Response, CustomerPreferencesCustomerIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<CustomerPreference>? get data;

  CustomerPreferencesCustomerIdGet200Response._();

  factory CustomerPreferencesCustomerIdGet200Response([void updates(CustomerPreferencesCustomerIdGet200ResponseBuilder b)]) = _$CustomerPreferencesCustomerIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerPreferencesCustomerIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerPreferencesCustomerIdGet200Response> get serializer => _$CustomerPreferencesCustomerIdGet200ResponseSerializer();
}

class _$CustomerPreferencesCustomerIdGet200ResponseSerializer implements PrimitiveSerializer<CustomerPreferencesCustomerIdGet200Response> {
  @override
  final Iterable<Type> types = const [CustomerPreferencesCustomerIdGet200Response, _$CustomerPreferencesCustomerIdGet200Response];

  @override
  final String wireName = r'CustomerPreferencesCustomerIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerPreferencesCustomerIdGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(CustomerPreference)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerPreferencesCustomerIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerPreferencesCustomerIdGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(CustomerPreference)]),
          ) as BuiltList<CustomerPreference>;
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
  CustomerPreferencesCustomerIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerPreferencesCustomerIdGet200ResponseBuilder();
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

