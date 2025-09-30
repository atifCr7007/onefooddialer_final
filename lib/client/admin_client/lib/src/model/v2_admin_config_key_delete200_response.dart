//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_config_key_delete200_response.g.dart';

/// V2AdminConfigKeyDelete200Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class V2AdminConfigKeyDelete200Response implements Built<V2AdminConfigKeyDelete200Response, V2AdminConfigKeyDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  V2AdminConfigKeyDelete200Response._();

  factory V2AdminConfigKeyDelete200Response([void updates(V2AdminConfigKeyDelete200ResponseBuilder b)]) = _$V2AdminConfigKeyDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminConfigKeyDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminConfigKeyDelete200Response> get serializer => _$V2AdminConfigKeyDelete200ResponseSerializer();
}

class _$V2AdminConfigKeyDelete200ResponseSerializer implements PrimitiveSerializer<V2AdminConfigKeyDelete200Response> {
  @override
  final Iterable<Type> types = const [V2AdminConfigKeyDelete200Response, _$V2AdminConfigKeyDelete200Response];

  @override
  final String wireName = r'V2AdminConfigKeyDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminConfigKeyDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminConfigKeyDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminConfigKeyDelete200ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminConfigKeyDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminConfigKeyDelete200ResponseBuilder();
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

