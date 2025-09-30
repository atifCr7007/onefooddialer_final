//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_third_party_delivery_status200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_third_party_delivery_status200_response.g.dart';

/// GetThirdPartyDeliveryStatus200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class GetThirdPartyDeliveryStatus200Response implements Built<GetThirdPartyDeliveryStatus200Response, GetThirdPartyDeliveryStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  GetThirdPartyDeliveryStatus200ResponseData? get data;

  GetThirdPartyDeliveryStatus200Response._();

  factory GetThirdPartyDeliveryStatus200Response([void updates(GetThirdPartyDeliveryStatus200ResponseBuilder b)]) = _$GetThirdPartyDeliveryStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetThirdPartyDeliveryStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetThirdPartyDeliveryStatus200Response> get serializer => _$GetThirdPartyDeliveryStatus200ResponseSerializer();
}

class _$GetThirdPartyDeliveryStatus200ResponseSerializer implements PrimitiveSerializer<GetThirdPartyDeliveryStatus200Response> {
  @override
  final Iterable<Type> types = const [GetThirdPartyDeliveryStatus200Response, _$GetThirdPartyDeliveryStatus200Response];

  @override
  final String wireName = r'GetThirdPartyDeliveryStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetThirdPartyDeliveryStatus200Response object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(GetThirdPartyDeliveryStatus200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetThirdPartyDeliveryStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetThirdPartyDeliveryStatus200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetThirdPartyDeliveryStatus200ResponseData),
          ) as GetThirdPartyDeliveryStatus200ResponseData;
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
  GetThirdPartyDeliveryStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetThirdPartyDeliveryStatus200ResponseBuilder();
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

