//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/estimate_delivery_time200_response_data_preparation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'estimate_delivery_time200_response_data.g.dart';

/// EstimateDeliveryTime200ResponseData
///
/// Properties:
/// * [orderId] 
/// * [preparationTimeMinutes] 
/// * [deliveryTimeMinutes] 
/// * [totalEstimatedTimeMinutes] 
/// * [estimatedDeliveryTime] 
/// * [preparationStatus] 
@BuiltValue()
abstract class EstimateDeliveryTime200ResponseData implements Built<EstimateDeliveryTime200ResponseData, EstimateDeliveryTime200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  @BuiltValueField(wireName: r'preparation_time_minutes')
  int? get preparationTimeMinutes;

  @BuiltValueField(wireName: r'delivery_time_minutes')
  int? get deliveryTimeMinutes;

  @BuiltValueField(wireName: r'total_estimated_time_minutes')
  int? get totalEstimatedTimeMinutes;

  @BuiltValueField(wireName: r'estimated_delivery_time')
  DateTime? get estimatedDeliveryTime;

  @BuiltValueField(wireName: r'preparation_status')
  EstimateDeliveryTime200ResponseDataPreparationStatus? get preparationStatus;

  EstimateDeliveryTime200ResponseData._();

  factory EstimateDeliveryTime200ResponseData([void updates(EstimateDeliveryTime200ResponseDataBuilder b)]) = _$EstimateDeliveryTime200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EstimateDeliveryTime200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EstimateDeliveryTime200ResponseData> get serializer => _$EstimateDeliveryTime200ResponseDataSerializer();
}

class _$EstimateDeliveryTime200ResponseDataSerializer implements PrimitiveSerializer<EstimateDeliveryTime200ResponseData> {
  @override
  final Iterable<Type> types = const [EstimateDeliveryTime200ResponseData, _$EstimateDeliveryTime200ResponseData];

  @override
  final String wireName = r'EstimateDeliveryTime200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EstimateDeliveryTime200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.preparationTimeMinutes != null) {
      yield r'preparation_time_minutes';
      yield serializers.serialize(
        object.preparationTimeMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.deliveryTimeMinutes != null) {
      yield r'delivery_time_minutes';
      yield serializers.serialize(
        object.deliveryTimeMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalEstimatedTimeMinutes != null) {
      yield r'total_estimated_time_minutes';
      yield serializers.serialize(
        object.totalEstimatedTimeMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.estimatedDeliveryTime != null) {
      yield r'estimated_delivery_time';
      yield serializers.serialize(
        object.estimatedDeliveryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.preparationStatus != null) {
      yield r'preparation_status';
      yield serializers.serialize(
        object.preparationStatus,
        specifiedType: const FullType(EstimateDeliveryTime200ResponseDataPreparationStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EstimateDeliveryTime200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EstimateDeliveryTime200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'preparation_time_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.preparationTimeMinutes = valueDes;
          break;
        case r'delivery_time_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deliveryTimeMinutes = valueDes;
          break;
        case r'total_estimated_time_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalEstimatedTimeMinutes = valueDes;
          break;
        case r'estimated_delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.estimatedDeliveryTime = valueDes;
          break;
        case r'preparation_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EstimateDeliveryTime200ResponseDataPreparationStatus),
          ) as EstimateDeliveryTime200ResponseDataPreparationStatus;
          result.preparationStatus.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EstimateDeliveryTime200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EstimateDeliveryTime200ResponseDataBuilder();
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

