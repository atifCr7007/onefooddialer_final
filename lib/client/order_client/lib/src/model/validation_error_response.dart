//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:order_client/src/model/validation_error_response_errors_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error_response.g.dart';

/// ValidationErrorResponse
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [errors] 
@BuiltValue()
abstract class ValidationErrorResponse implements Built<ValidationErrorResponse, ValidationErrorResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  ValidationErrorResponseStatusEnum get status;
  // enum statusEnum {  error,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<ValidationErrorResponseErrorsInner> get errors;

  ValidationErrorResponse._();

  factory ValidationErrorResponse([void updates(ValidationErrorResponseBuilder b)]) = _$ValidationErrorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationErrorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationErrorResponse> get serializer => _$ValidationErrorResponseSerializer();
}

class _$ValidationErrorResponseSerializer implements PrimitiveSerializer<ValidationErrorResponse> {
  @override
  final Iterable<Type> types = const [ValidationErrorResponse, _$ValidationErrorResponse];

  @override
  final String wireName = r'ValidationErrorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ValidationErrorResponseStatusEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(ValidationErrorResponseErrorsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationErrorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationErrorResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationErrorResponseStatusEnum),
          ) as ValidationErrorResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ValidationErrorResponseErrorsInner)]),
          ) as BuiltList<ValidationErrorResponseErrorsInner>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationErrorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationErrorResponseBuilder();
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

class ValidationErrorResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'error')
  static const ValidationErrorResponseStatusEnum error = _$validationErrorResponseStatusEnum_error;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ValidationErrorResponseStatusEnum unknownDefaultOpenApi = _$validationErrorResponseStatusEnum_unknownDefaultOpenApi;

  static Serializer<ValidationErrorResponseStatusEnum> get serializer => _$validationErrorResponseStatusEnumSerializer;

  const ValidationErrorResponseStatusEnum._(String name): super(name);

  static BuiltSet<ValidationErrorResponseStatusEnum> get values => _$validationErrorResponseStatusEnumValues;
  static ValidationErrorResponseStatusEnum valueOf(String name) => _$validationErrorResponseStatusEnumValueOf(name);
}

