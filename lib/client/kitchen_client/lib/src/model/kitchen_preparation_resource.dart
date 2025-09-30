//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kitchen_client/src/model/kitchen_kitchen_master.dart';
import 'package:kitchen_client/src/model/kitchen_preparation_resource_product.dart';
import 'package:kitchen_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kitchen_preparation_resource.g.dart';

/// KitchenPreparationResource
///
/// Properties:
/// * [id] 
/// * [productId] 
/// * [kitchenId] 
/// * [totalOrder] 
/// * [prepared] 
/// * [remaining] 
/// * [preparationPercentage] 
/// * [isFullyPrepared] 
/// * [date] 
/// * [menu] 
/// * [product] 
/// * [kitchenMaster] 
@BuiltValue()
abstract class KitchenPreparationResource implements Built<KitchenPreparationResource, KitchenPreparationResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'product_id')
  int? get productId;

  @BuiltValueField(wireName: r'kitchen_id')
  int? get kitchenId;

  @BuiltValueField(wireName: r'total_order')
  int? get totalOrder;

  @BuiltValueField(wireName: r'prepared')
  int? get prepared;

  @BuiltValueField(wireName: r'remaining')
  int? get remaining;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  @BuiltValueField(wireName: r'is_fully_prepared')
  bool? get isFullyPrepared;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'menu')
  String? get menu;

  @BuiltValueField(wireName: r'product')
  KitchenPreparationResourceProduct? get product;

  @BuiltValueField(wireName: r'kitchen_master')
  KitchenKitchenMaster? get kitchenMaster;

  KitchenPreparationResource._();

  factory KitchenPreparationResource([void updates(KitchenPreparationResourceBuilder b)]) = _$KitchenPreparationResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KitchenPreparationResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KitchenPreparationResource> get serializer => _$KitchenPreparationResourceSerializer();
}

class _$KitchenPreparationResourceSerializer implements PrimitiveSerializer<KitchenPreparationResource> {
  @override
  final Iterable<Type> types = const [KitchenPreparationResource, _$KitchenPreparationResource];

  @override
  final String wireName = r'KitchenPreparationResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KitchenPreparationResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.productId != null) {
      yield r'product_id';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(int),
      );
    }
    if (object.kitchenId != null) {
      yield r'kitchen_id';
      yield serializers.serialize(
        object.kitchenId,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalOrder != null) {
      yield r'total_order';
      yield serializers.serialize(
        object.totalOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.prepared != null) {
      yield r'prepared';
      yield serializers.serialize(
        object.prepared,
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
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(KitchenPreparationResourceProduct),
      );
    }
    if (object.kitchenMaster != null) {
      yield r'kitchen_master';
      yield serializers.serialize(
        object.kitchenMaster,
        specifiedType: const FullType(KitchenKitchenMaster),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KitchenPreparationResource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KitchenPreparationResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        case r'kitchen_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.kitchenId = valueDes;
          break;
        case r'total_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalOrder = valueDes;
          break;
        case r'prepared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.prepared = valueDes;
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
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KitchenPreparationResourceProduct),
          ) as KitchenPreparationResourceProduct;
          result.product.replace(valueDes);
          break;
        case r'kitchen_master':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KitchenKitchenMaster),
          ) as KitchenKitchenMaster;
          result.kitchenMaster.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KitchenPreparationResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenPreparationResourceBuilder();
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

