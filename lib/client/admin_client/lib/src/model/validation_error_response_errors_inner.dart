//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error_response_errors_inner.g.dart';

/// ValidationErrorResponseErrorsInner
///
/// Properties:
/// * [field] 
/// * [message] 
/// * [code] 
@BuiltValue()
abstract class ValidationErrorResponseErrorsInner implements Built<ValidationErrorResponseErrorsInner, ValidationErrorResponseErrorsInnerBuilder> {
  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'code')
  String? get code;

  ValidationErrorResponseErrorsInner._();

  factory ValidationErrorResponseErrorsInner([void updates(ValidationErrorResponseErrorsInnerBuilder b)]) = _$ValidationErrorResponseErrorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationErrorResponseErrorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationErrorResponseErrorsInner> get serializer => _$ValidationErrorResponseErrorsInnerSerializer();
}

class _$ValidationErrorResponseErrorsInnerSerializer implements PrimitiveSerializer<ValidationErrorResponseErrorsInner> {
  @override
  final Iterable<Type> types = const [ValidationErrorResponseErrorsInner, _$ValidationErrorResponseErrorsInner];

  @override
  final String wireName = r'ValidationErrorResponseErrorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationErrorResponseErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidationErrorResponseErrorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationErrorResponseErrorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidationErrorResponseErrorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationErrorResponseErrorsInnerBuilder();
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

