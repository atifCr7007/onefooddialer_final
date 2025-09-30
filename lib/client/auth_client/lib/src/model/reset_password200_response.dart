//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reset_password200_response.g.dart';

/// ResetPassword200Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class ResetPassword200Response implements Built<ResetPassword200Response, ResetPassword200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ResetPassword200Response._();

  factory ResetPassword200Response([void updates(ResetPassword200ResponseBuilder b)]) = _$ResetPassword200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetPassword200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetPassword200Response> get serializer => _$ResetPassword200ResponseSerializer();
}

class _$ResetPassword200ResponseSerializer implements PrimitiveSerializer<ResetPassword200Response> {
  @override
  final Iterable<Type> types = const [ResetPassword200Response, _$ResetPassword200Response];

  @override
  final String wireName = r'ResetPassword200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetPassword200Response object, {
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
    ResetPassword200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResetPassword200ResponseBuilder result,
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
  ResetPassword200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetPassword200ResponseBuilder();
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

