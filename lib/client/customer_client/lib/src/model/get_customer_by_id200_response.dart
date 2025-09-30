//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:customer_client/src/model/customer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customer_by_id200_response.g.dart';

/// GetCustomerById200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetCustomerById200Response implements Built<GetCustomerById200Response, GetCustomerById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Customer? get data;

  GetCustomerById200Response._();

  factory GetCustomerById200Response([void updates(GetCustomerById200ResponseBuilder b)]) = _$GetCustomerById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomerById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomerById200Response> get serializer => _$GetCustomerById200ResponseSerializer();
}

class _$GetCustomerById200ResponseSerializer implements PrimitiveSerializer<GetCustomerById200Response> {
  @override
  final Iterable<Type> types = const [GetCustomerById200Response, _$GetCustomerById200Response];

  @override
  final String wireName = r'GetCustomerById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomerById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Customer),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomerById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomerById200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Customer),
          ) as Customer;
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
  GetCustomerById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomerById200ResponseBuilder();
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

