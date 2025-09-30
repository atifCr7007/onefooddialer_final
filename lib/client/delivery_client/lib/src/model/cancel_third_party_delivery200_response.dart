//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_third_party_delivery200_response.g.dart';

/// CancelThirdPartyDelivery200Response
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class CancelThirdPartyDelivery200Response implements Built<CancelThirdPartyDelivery200Response, CancelThirdPartyDelivery200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  CancelThirdPartyDelivery200Response._();

  factory CancelThirdPartyDelivery200Response([void updates(CancelThirdPartyDelivery200ResponseBuilder b)]) = _$CancelThirdPartyDelivery200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CancelThirdPartyDelivery200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CancelThirdPartyDelivery200Response> get serializer => _$CancelThirdPartyDelivery200ResponseSerializer();
}

class _$CancelThirdPartyDelivery200ResponseSerializer implements PrimitiveSerializer<CancelThirdPartyDelivery200Response> {
  @override
  final Iterable<Type> types = const [CancelThirdPartyDelivery200Response, _$CancelThirdPartyDelivery200Response];

  @override
  final String wireName = r'CancelThirdPartyDelivery200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CancelThirdPartyDelivery200Response object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CancelThirdPartyDelivery200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CancelThirdPartyDelivery200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CancelThirdPartyDelivery200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelThirdPartyDelivery200ResponseBuilder();
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

