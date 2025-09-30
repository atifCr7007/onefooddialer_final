//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_item_input.g.dart';

/// SubscriptionItemInput
///
/// Properties:
/// * [mealId] - Meal ID
/// * [mealName] - Name of the meal
/// * [quantity] - Quantity
/// * [price] - Price per item
/// * [dayOfWeek] - Day of the week
/// * [mealType] - Type of meal
/// * [isSwappable] - Whether the item is swappable
/// * [swapOptions] - Swap options
/// * [notes] - Notes
@BuiltValue()
abstract class SubscriptionItemInput implements Built<SubscriptionItemInput, SubscriptionItemInputBuilder> {
  /// Meal ID
  @BuiltValueField(wireName: r'meal_id')
  int get mealId;

  /// Name of the meal
  @BuiltValueField(wireName: r'meal_name')
  String get mealName;

  /// Quantity
  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  /// Price per item
  @BuiltValueField(wireName: r'price')
  double get price;

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

  SubscriptionItemInput._();

  factory SubscriptionItemInput([void updates(SubscriptionItemInputBuilder b)]) = _$SubscriptionItemInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionItemInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionItemInput> get serializer => _$SubscriptionItemInputSerializer();
}

class _$SubscriptionItemInputSerializer implements PrimitiveSerializer<SubscriptionItemInput> {
  @override
  final Iterable<Type> types = const [SubscriptionItemInput, _$SubscriptionItemInput];

  @override
  final String wireName = r'SubscriptionItemInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'meal_id';
    yield serializers.serialize(
      object.mealId,
      specifiedType: const FullType(int),
    );
    yield r'meal_name';
    yield serializers.serialize(
      object.mealName,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(double),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionItemInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionItemInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionItemInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionItemInputBuilder();
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

