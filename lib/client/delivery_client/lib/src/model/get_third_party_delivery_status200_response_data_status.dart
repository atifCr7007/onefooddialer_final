//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_third_party_delivery_status200_response_data_status.g.dart';

/// GetThirdPartyDeliveryStatus200ResponseDataStatus
///
/// Properties:
/// * [status] 
/// * [deliveryguyName] 
/// * [deliveryguyPhoneNumber] 
/// * [pickupguyName] 
/// * [pickupguyPhoneNumber] 
@BuiltValue()
abstract class GetThirdPartyDeliveryStatus200ResponseDataStatus implements Built<GetThirdPartyDeliveryStatus200ResponseDataStatus, GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'deliveryguy_name')
  String? get deliveryguyName;

  @BuiltValueField(wireName: r'deliveryguy_phone_number')
  String? get deliveryguyPhoneNumber;

  @BuiltValueField(wireName: r'pickupguy_name')
  String? get pickupguyName;

  @BuiltValueField(wireName: r'pickupguy_phone_number')
  String? get pickupguyPhoneNumber;

  GetThirdPartyDeliveryStatus200ResponseDataStatus._();

  factory GetThirdPartyDeliveryStatus200ResponseDataStatus([void updates(GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder b)]) = _$GetThirdPartyDeliveryStatus200ResponseDataStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetThirdPartyDeliveryStatus200ResponseDataStatus> get serializer => _$GetThirdPartyDeliveryStatus200ResponseDataStatusSerializer();
}

class _$GetThirdPartyDeliveryStatus200ResponseDataStatusSerializer implements PrimitiveSerializer<GetThirdPartyDeliveryStatus200ResponseDataStatus> {
  @override
  final Iterable<Type> types = const [GetThirdPartyDeliveryStatus200ResponseDataStatus, _$GetThirdPartyDeliveryStatus200ResponseDataStatus];

  @override
  final String wireName = r'GetThirdPartyDeliveryStatus200ResponseDataStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetThirdPartyDeliveryStatus200ResponseDataStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryguyName != null) {
      yield r'deliveryguy_name';
      yield serializers.serialize(
        object.deliveryguyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryguyPhoneNumber != null) {
      yield r'deliveryguy_phone_number';
      yield serializers.serialize(
        object.deliveryguyPhoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.pickupguyName != null) {
      yield r'pickupguy_name';
      yield serializers.serialize(
        object.pickupguyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.pickupguyPhoneNumber != null) {
      yield r'pickupguy_phone_number';
      yield serializers.serialize(
        object.pickupguyPhoneNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetThirdPartyDeliveryStatus200ResponseDataStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder result,
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
        case r'deliveryguy_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryguyName = valueDes;
          break;
        case r'deliveryguy_phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryguyPhoneNumber = valueDes;
          break;
        case r'pickupguy_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pickupguyName = valueDes;
          break;
        case r'pickupguy_phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pickupguyPhoneNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetThirdPartyDeliveryStatus200ResponseDataStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder();
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

