//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_token_request.g.dart';

/// ValidateTokenRequest
///
/// Properties:
/// * [token] - Authentication token
@BuiltValue()
abstract class ValidateTokenRequest implements Built<ValidateTokenRequest, ValidateTokenRequestBuilder> {
  /// Authentication token
  @BuiltValueField(wireName: r'token')
  String? get token;

  ValidateTokenRequest._();

  factory ValidateTokenRequest([void updates(ValidateTokenRequestBuilder b)]) = _$ValidateTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateTokenRequest> get serializer => _$ValidateTokenRequestSerializer();
}

class _$ValidateTokenRequestSerializer implements PrimitiveSerializer<ValidateTokenRequest> {
  @override
  final Iterable<Type> types = const [ValidateTokenRequest, _$ValidateTokenRequest];

  @override
  final String wireName = r'ValidateTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateTokenRequestBuilder();
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

