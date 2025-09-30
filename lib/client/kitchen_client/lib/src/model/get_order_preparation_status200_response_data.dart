//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/kitchen_preparation_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_order_preparation_status200_response_data.g.dart';

/// GetOrderPreparationStatus200ResponseData
///
/// Properties:
/// * [orderId] 
/// * [date] 
/// * [menu] 
/// * [isFullyPrepared] 
/// * [preparationPercentage] 
/// * [items] 
@BuiltValue()
abstract class GetOrderPreparationStatus200ResponseData implements Built<GetOrderPreparationStatus200ResponseData, GetOrderPreparationStatus200ResponseDataBuilder> {
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

  @BuiltValueField(wireName: r'items')
  BuiltList<KitchenPreparationResource>? get items;

  GetOrderPreparationStatus200ResponseData._();

  factory GetOrderPreparationStatus200ResponseData([void updates(GetOrderPreparationStatus200ResponseDataBuilder b)]) = _$GetOrderPreparationStatus200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOrderPreparationStatus200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOrderPreparationStatus200ResponseData> get serializer => _$GetOrderPreparationStatus200ResponseDataSerializer();
}

class _$GetOrderPreparationStatus200ResponseDataSerializer implements PrimitiveSerializer<GetOrderPreparationStatus200ResponseData> {
  @override
  final Iterable<Type> types = const [GetOrderPreparationStatus200ResponseData, _$GetOrderPreparationStatus200ResponseData];

  @override
  final String wireName = r'GetOrderPreparationStatus200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOrderPreparationStatus200ResponseData object, {
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
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(KitchenPreparationResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOrderPreparationStatus200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOrderPreparationStatus200ResponseDataBuilder result,
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KitchenPreparationResource)]),
          ) as BuiltList<KitchenPreparationResource>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetOrderPreparationStatus200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrderPreparationStatus200ResponseDataBuilder();
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

