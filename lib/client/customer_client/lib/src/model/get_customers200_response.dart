//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:customer_client/src/model/get_customers200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customers200_response.g.dart';

/// GetCustomers200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetCustomers200Response implements Built<GetCustomers200Response, GetCustomers200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  GetCustomers200ResponseData? get data;

  GetCustomers200Response._();

  factory GetCustomers200Response([void updates(GetCustomers200ResponseBuilder b)]) = _$GetCustomers200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomers200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomers200Response> get serializer => _$GetCustomers200ResponseSerializer();
}

class _$GetCustomers200ResponseSerializer implements PrimitiveSerializer<GetCustomers200Response> {
  @override
  final Iterable<Type> types = const [GetCustomers200Response, _$GetCustomers200Response];

  @override
  final String wireName = r'GetCustomers200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomers200Response object, {
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
        specifiedType: const FullType(GetCustomers200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomers200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomers200ResponseBuilder result,
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
            specifiedType: const FullType(GetCustomers200ResponseData),
          ) as GetCustomers200ResponseData;
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
  GetCustomers200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomers200ResponseBuilder();
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

