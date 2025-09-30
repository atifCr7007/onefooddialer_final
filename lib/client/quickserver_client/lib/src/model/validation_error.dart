//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error.g.dart';

/// ValidationError
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [errors] 
@BuiltValue()
abstract class ValidationError implements Built<ValidationError, ValidationErrorBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  Map<String,dynamic>? get errors;

  ValidationError._();

  factory ValidationError([void updates(ValidationErrorBuilder b)]) = _$ValidationError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidationErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidationError> get serializer => _$ValidationErrorSerializer();
}

class _$ValidationErrorSerializer implements PrimitiveSerializer<ValidationError> {
  @override
  final Iterable<Type> types = const [ValidationError, _$ValidationError];

  @override
  final String wireName = r'ValidationError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidationError object, {
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
    ValidationError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidationErrorBuilder result,
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
  ValidationError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationErrorBuilder();
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

