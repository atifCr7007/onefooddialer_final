//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item_customization.g.dart';

/// ItemCustomization
///
/// Properties:
/// * [id] 
/// * [name] - Customization name
/// * [category] - Customization category
/// * [price] - Additional price for this customization
/// * [quantity] - Quantity of this customization
@BuiltValue()
abstract class ItemCustomization implements Built<ItemCustomization, ItemCustomizationBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Customization name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Customization category
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// Additional price for this customization
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// Quantity of this customization
  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  ItemCustomization._();

  factory ItemCustomization([void updates(ItemCustomizationBuilder b)]) = _$ItemCustomization;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemCustomizationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemCustomization> get serializer => _$ItemCustomizationSerializer();
}

class _$ItemCustomizationSerializer implements PrimitiveSerializer<ItemCustomization> {
  @override
  final Iterable<Type> types = const [ItemCustomization, _$ItemCustomization];

  @override
  final String wireName = r'ItemCustomization';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemCustomization object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemCustomization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ItemCustomizationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemCustomization deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemCustomizationBuilder();
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

