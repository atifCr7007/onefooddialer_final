//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/validate_token200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_token200_response.g.dart';

/// ValidateToken200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class ValidateToken200Response implements Built<ValidateToken200Response, ValidateToken200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  ValidateToken200ResponseData? get data;

  ValidateToken200Response._();

  factory ValidateToken200Response([void updates(ValidateToken200ResponseBuilder b)]) = _$ValidateToken200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateToken200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateToken200Response> get serializer => _$ValidateToken200ResponseSerializer();
}

class _$ValidateToken200ResponseSerializer implements PrimitiveSerializer<ValidateToken200Response> {
  @override
  final Iterable<Type> types = const [ValidateToken200Response, _$ValidateToken200Response];

  @override
  final String wireName = r'ValidateToken200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateToken200Response object, {
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
        specifiedType: const FullType(ValidateToken200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateToken200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateToken200ResponseBuilder result,
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
            specifiedType: const FullType(ValidateToken200ResponseData),
          ) as ValidateToken200ResponseData;
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
  ValidateToken200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateToken200ResponseBuilder();
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

