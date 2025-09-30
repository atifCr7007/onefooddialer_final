//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_preparation_summary200_response_data.g.dart';

/// GetPreparationSummary200ResponseData
///
/// Properties:
/// * [date] 
/// * [menu] 
/// * [kitchenId] 
/// * [totalOrders] 
/// * [totalPrepared] 
/// * [remaining] 
/// * [preparationPercentage] 
/// * [isFullyPrepared] 
@BuiltValue()
abstract class GetPreparationSummary200ResponseData implements Built<GetPreparationSummary200ResponseData, GetPreparationSummary200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'menu')
  String? get menu;

  @BuiltValueField(wireName: r'kitchen_id')
  int? get kitchenId;

  @BuiltValueField(wireName: r'total_orders')
  int? get totalOrders;

  @BuiltValueField(wireName: r'total_prepared')
  int? get totalPrepared;

  @BuiltValueField(wireName: r'remaining')
  int? get remaining;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  @BuiltValueField(wireName: r'is_fully_prepared')
  bool? get isFullyPrepared;

  GetPreparationSummary200ResponseData._();

  factory GetPreparationSummary200ResponseData([void updates(GetPreparationSummary200ResponseDataBuilder b)]) = _$GetPreparationSummary200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPreparationSummary200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPreparationSummary200ResponseData> get serializer => _$GetPreparationSummary200ResponseDataSerializer();
}

class _$GetPreparationSummary200ResponseDataSerializer implements PrimitiveSerializer<GetPreparationSummary200ResponseData> {
  @override
  final Iterable<Type> types = const [GetPreparationSummary200ResponseData, _$GetPreparationSummary200ResponseData];

  @override
  final String wireName = r'GetPreparationSummary200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPreparationSummary200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.kitchenId != null) {
      yield r'kitchen_id';
      yield serializers.serialize(
        object.kitchenId,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalOrders != null) {
      yield r'total_orders';
      yield serializers.serialize(
        object.totalOrders,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalPrepared != null) {
      yield r'total_prepared';
      yield serializers.serialize(
        object.totalPrepared,
        specifiedType: const FullType(int),
      );
    }
    if (object.remaining != null) {
      yield r'remaining';
      yield serializers.serialize(
        object.remaining,
        specifiedType: const FullType(int),
      );
    }
    if (object.preparationPercentage != null) {
      yield r'preparation_percentage';
      yield serializers.serialize(
        object.preparationPercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.isFullyPrepared != null) {
      yield r'is_fully_prepared';
      yield serializers.serialize(
        object.isFullyPrepared,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetPreparationSummary200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetPreparationSummary200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'kitchen_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.kitchenId = valueDes;
          break;
        case r'total_orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalOrders = valueDes;
          break;
        case r'total_prepared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPrepared = valueDes;
          break;
        case r'remaining':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.remaining = valueDes;
          break;
        case r'preparation_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.preparationPercentage = valueDes;
          break;
        case r'is_fully_prepared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFullyPrepared = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetPreparationSummary200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPreparationSummary200ResponseDataBuilder();
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

