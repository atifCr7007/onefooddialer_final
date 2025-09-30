//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'estimate_delivery_time200_response_data_preparation_status.g.dart';

/// EstimateDeliveryTime200ResponseDataPreparationStatus
///
/// Properties:
/// * [isFullyPrepared] 
/// * [preparationPercentage] 
@BuiltValue()
abstract class EstimateDeliveryTime200ResponseDataPreparationStatus implements Built<EstimateDeliveryTime200ResponseDataPreparationStatus, EstimateDeliveryTime200ResponseDataPreparationStatusBuilder> {
  @BuiltValueField(wireName: r'is_fully_prepared')
  bool? get isFullyPrepared;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  EstimateDeliveryTime200ResponseDataPreparationStatus._();

  factory EstimateDeliveryTime200ResponseDataPreparationStatus([void updates(EstimateDeliveryTime200ResponseDataPreparationStatusBuilder b)]) = _$EstimateDeliveryTime200ResponseDataPreparationStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EstimateDeliveryTime200ResponseDataPreparationStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EstimateDeliveryTime200ResponseDataPreparationStatus> get serializer => _$EstimateDeliveryTime200ResponseDataPreparationStatusSerializer();
}

class _$EstimateDeliveryTime200ResponseDataPreparationStatusSerializer implements PrimitiveSerializer<EstimateDeliveryTime200ResponseDataPreparationStatus> {
  @override
  final Iterable<Type> types = const [EstimateDeliveryTime200ResponseDataPreparationStatus, _$EstimateDeliveryTime200ResponseDataPreparationStatus];

  @override
  final String wireName = r'EstimateDeliveryTime200ResponseDataPreparationStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EstimateDeliveryTime200ResponseDataPreparationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isFullyPrepared != null) {
      yield r'is_fully_prepared';
      yield serializers.serialize(
        object.isFullyPrepared,
        specifiedType: const FullType(bool),
      );
    }
    if (object.preparationPercentage != null) {
      yield r'preparation_percentage';
      yield serializers.serialize(
        object.preparationPercentage,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EstimateDeliveryTime200ResponseDataPreparationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EstimateDeliveryTime200ResponseDataPreparationStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_fully_prepared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFullyPrepared = valueDes;
          break;
        case r'preparation_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.preparationPercentage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EstimateDeliveryTime200ResponseDataPreparationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EstimateDeliveryTime200ResponseDataPreparationStatusBuilder();
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

