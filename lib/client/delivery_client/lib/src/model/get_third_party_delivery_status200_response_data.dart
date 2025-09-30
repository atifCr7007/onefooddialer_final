//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_third_party_delivery_status200_response_data_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_third_party_delivery_status200_response_data.g.dart';

/// GetThirdPartyDeliveryStatus200ResponseData
///
/// Properties:
/// * [code] 
/// * [status] 
@BuiltValue()
abstract class GetThirdPartyDeliveryStatus200ResponseData implements Built<GetThirdPartyDeliveryStatus200ResponseData, GetThirdPartyDeliveryStatus200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'code')
  int? get code;

  @BuiltValueField(wireName: r'status')
  GetThirdPartyDeliveryStatus200ResponseDataStatus? get status;

  GetThirdPartyDeliveryStatus200ResponseData._();

  factory GetThirdPartyDeliveryStatus200ResponseData([void updates(GetThirdPartyDeliveryStatus200ResponseDataBuilder b)]) = _$GetThirdPartyDeliveryStatus200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetThirdPartyDeliveryStatus200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetThirdPartyDeliveryStatus200ResponseData> get serializer => _$GetThirdPartyDeliveryStatus200ResponseDataSerializer();
}

class _$GetThirdPartyDeliveryStatus200ResponseDataSerializer implements PrimitiveSerializer<GetThirdPartyDeliveryStatus200ResponseData> {
  @override
  final Iterable<Type> types = const [GetThirdPartyDeliveryStatus200ResponseData, _$GetThirdPartyDeliveryStatus200ResponseData];

  @override
  final String wireName = r'GetThirdPartyDeliveryStatus200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetThirdPartyDeliveryStatus200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(GetThirdPartyDeliveryStatus200ResponseDataStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetThirdPartyDeliveryStatus200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetThirdPartyDeliveryStatus200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetThirdPartyDeliveryStatus200ResponseDataStatus),
          ) as GetThirdPartyDeliveryStatus200ResponseDataStatus;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetThirdPartyDeliveryStatus200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetThirdPartyDeliveryStatus200ResponseDataBuilder();
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

