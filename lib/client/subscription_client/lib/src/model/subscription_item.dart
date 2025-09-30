//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_item.g.dart';

/// SubscriptionItem
///
/// Properties:
/// * [id] - Unique identifier for the subscription item
/// * [companyId] - Company ID
/// * [unitId] - Unit ID
/// * [subscriptionId] - Subscription ID
/// * [mealId] - Meal ID
/// * [mealName] - Name of the meal
/// * [quantity] - Quantity
/// * [price] - Price per item
/// * [total] - Total price
/// * [dayOfWeek] - Day of the week
/// * [mealType] - Type of meal
/// * [isSwappable] - Whether the item is swappable
/// * [swapOptions] - Swap options
/// * [notes] - Notes
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class SubscriptionItem implements Built<SubscriptionItem, SubscriptionItemBuilder> {
  /// Unique identifier for the subscription item
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Company ID
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  /// Unit ID
  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  /// Subscription ID
  @BuiltValueField(wireName: r'subscription_id')
  int? get subscriptionId;

  /// Meal ID
  @BuiltValueField(wireName: r'meal_id')
  int? get mealId;

  /// Name of the meal
  @BuiltValueField(wireName: r'meal_name')
  String? get mealName;

  /// Quantity
  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  /// Price per item
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// Total price
  @BuiltValueField(wireName: r'total')
  double? get total;

  /// Day of the week
  @BuiltValueField(wireName: r'day_of_week')
  String? get dayOfWeek;

  /// Type of meal
  @BuiltValueField(wireName: r'meal_type')
  String? get mealType;

  /// Whether the item is swappable
  @BuiltValueField(wireName: r'is_swappable')
  bool? get isSwappable;

  /// Swap options
  @BuiltValueField(wireName: r'swap_options')
  BuiltList<Map<String,dynamic>>? get swapOptions;

  /// Notes
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Creation timestamp
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  SubscriptionItem._();

  factory SubscriptionItem([void updates(SubscriptionItemBuilder b)]) = _$SubscriptionItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionItem> get serializer => _$SubscriptionItemSerializer();
}

class _$SubscriptionItemSerializer implements PrimitiveSerializer<SubscriptionItem> {
  @override
  final Iterable<Type> types = const [SubscriptionItem, _$SubscriptionItem];

  @override
  final String wireName = r'SubscriptionItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.companyId != null) {
      yield r'company_id';
      yield serializers.serialize(
        object.companyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitId != null) {
      yield r'unit_id';
      yield serializers.serialize(
        object.unitId,
        specifiedType: const FullType(int),
      );
    }
    if (object.subscriptionId != null) {
      yield r'subscription_id';
      yield serializers.serialize(
        object.subscriptionId,
        specifiedType: const FullType(int),
      );
    }
    if (object.mealId != null) {
      yield r'meal_id';
      yield serializers.serialize(
        object.mealId,
        specifiedType: const FullType(int),
      );
    }
    if (object.mealName != null) {
      yield r'meal_name';
      yield serializers.serialize(
        object.mealName,
        specifiedType: const FullType(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(double),
      );
    }
    if (object.dayOfWeek != null) {
      yield r'day_of_week';
      yield serializers.serialize(
        object.dayOfWeek,
        specifiedType: const FullType(String),
      );
    }
    if (object.mealType != null) {
      yield r'meal_type';
      yield serializers.serialize(
        object.mealType,
        specifiedType: const FullType(String),
      );
    }
    if (object.isSwappable != null) {
      yield r'is_swappable';
      yield serializers.serialize(
        object.isSwappable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.swapOptions != null) {
      yield r'swap_options';
      yield serializers.serialize(
        object.swapOptions,
        specifiedType: const FullType(BuiltList, [FullType(Map<String,dynamic>)]),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionItemBuilder result,
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
        case r'company_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.companyId = valueDes;
          break;
        case r'unit_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unitId = valueDes;
          break;
        case r'subscription_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.subscriptionId = valueDes;
          break;
        case r'meal_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mealId = valueDes;
          break;
        case r'meal_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mealName = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.total = valueDes;
          break;
        case r'day_of_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dayOfWeek = valueDes;
          break;
        case r'meal_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mealType = valueDes;
          break;
        case r'is_swappable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSwappable = valueDes;
          break;
        case r'swap_options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Map<String,dynamic>)]),
          ) as BuiltList<Map<String,dynamic>>;
          result.swapOptions.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionItemBuilder();
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

