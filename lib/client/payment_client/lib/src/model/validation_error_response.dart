//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error_response.g.dart';

/// ValidationErrorResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [message] - Error message
/// * [errors] - Validation errors
@BuiltValue()
abstract class ValidationErrorResponse implements Built<ValidationErrorResponse, ValidationErrorResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Error message
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Validation errors
  @BuiltValueField(wireName: r'errors')
  Map<String,dynamic>? get errors;

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
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
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
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
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
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.errors = valueDes;
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

