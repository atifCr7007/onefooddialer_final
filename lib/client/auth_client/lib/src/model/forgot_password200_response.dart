//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/forgot_password200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forgot_password200_response.g.dart';

/// ForgotPassword200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class ForgotPassword200Response implements Built<ForgotPassword200Response, ForgotPassword200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  ForgotPassword200ResponseData? get data;

  ForgotPassword200Response._();

  factory ForgotPassword200Response([void updates(ForgotPassword200ResponseBuilder b)]) = _$ForgotPassword200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForgotPassword200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForgotPassword200Response> get serializer => _$ForgotPassword200ResponseSerializer();
}

class _$ForgotPassword200ResponseSerializer implements PrimitiveSerializer<ForgotPassword200Response> {
  @override
  final Iterable<Type> types = const [ForgotPassword200Response, _$ForgotPassword200Response];

  @override
  final String wireName = r'ForgotPassword200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForgotPassword200Response object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ForgotPassword200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForgotPassword200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ForgotPassword200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ForgotPassword200ResponseData),
          ) as ForgotPassword200ResponseData;
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
  ForgotPassword200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForgotPassword200ResponseBuilder();
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

