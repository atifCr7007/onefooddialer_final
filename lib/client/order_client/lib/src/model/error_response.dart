//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response.g.dart';

/// ErrorResponse
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [code] 
/// * [timestamp] 
@BuiltValue()
abstract class ErrorResponse implements Built<ErrorResponse, ErrorResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  ErrorResponseStatusEnum get status;
  // enum statusEnum {  error,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  ErrorResponse._();

  factory ErrorResponse([void updates(ErrorResponseBuilder b)]) = _$ErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponse> get serializer => _$ErrorResponseSerializer();
}

class _$ErrorResponseSerializer implements PrimitiveSerializer<ErrorResponse> {
  @override
  final Iterable<Type> types = const [ErrorResponse, _$ErrorResponse];

  @override
  final String wireName = r'ErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ErrorResponseStatusEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ErrorResponseStatusEnum),
          ) as ErrorResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponseBuilder();
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

class ErrorResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'error')
  static const ErrorResponseStatusEnum error = _$errorResponseStatusEnum_error;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ErrorResponseStatusEnum unknownDefaultOpenApi = _$errorResponseStatusEnum_unknownDefaultOpenApi;

  static Serializer<ErrorResponseStatusEnum> get serializer => _$errorResponseStatusEnumSerializer;

  const ErrorResponseStatusEnum._(String name): super(name);

  static BuiltSet<ErrorResponseStatusEnum> get values => _$errorResponseStatusEnumValues;
  static ErrorResponseStatusEnum valueOf(String name) => _$errorResponseStatusEnumValueOf(name);
}

