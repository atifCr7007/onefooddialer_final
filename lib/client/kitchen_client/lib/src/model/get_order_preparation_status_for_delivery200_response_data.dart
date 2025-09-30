//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_order_preparation_status_for_delivery200_response_data.g.dart';

/// GetOrderPreparationStatusForDelivery200ResponseData
///
/// Properties:
/// * [orderId] 
/// * [date] 
/// * [menu] 
/// * [isFullyPrepared] 
/// * [preparationPercentage] 
/// * [status] 
@BuiltValue()
abstract class GetOrderPreparationStatusForDelivery200ResponseData implements Built<GetOrderPreparationStatusForDelivery200ResponseData, GetOrderPreparationStatusForDelivery200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'menu')
  String? get menu;

  @BuiltValueField(wireName: r'is_fully_prepared')
  bool? get isFullyPrepared;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  @BuiltValueField(wireName: r'status')
  String? get status;

  GetOrderPreparationStatusForDelivery200ResponseData._();

  factory GetOrderPreparationStatusForDelivery200ResponseData([void updates(GetOrderPreparationStatusForDelivery200ResponseDataBuilder b)]) = _$GetOrderPreparationStatusForDelivery200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOrderPreparationStatusForDelivery200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOrderPreparationStatusForDelivery200ResponseData> get serializer => _$GetOrderPreparationStatusForDelivery200ResponseDataSerializer();
}

class _$GetOrderPreparationStatusForDelivery200ResponseDataSerializer implements PrimitiveSerializer<GetOrderPreparationStatusForDelivery200ResponseData> {
  @override
  final Iterable<Type> types = const [GetOrderPreparationStatusForDelivery200ResponseData, _$GetOrderPreparationStatusForDelivery200ResponseData];

  @override
  final String wireName = r'GetOrderPreparationStatusForDelivery200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOrderPreparationStatusForDelivery200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.menu != null) {
      yield r'menu';
      yield serializers.serialize(
        object.menu,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOrderPreparationStatusForDelivery200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOrderPreparationStatusForDelivery200ResponseDataBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.menu = valueDes;
          break;
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetOrderPreparationStatusForDelivery200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrderPreparationStatusForDelivery200ResponseDataBuilder();
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

