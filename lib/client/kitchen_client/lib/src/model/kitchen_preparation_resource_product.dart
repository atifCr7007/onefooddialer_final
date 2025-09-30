//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kitchen_preparation_resource_product.g.dart';

/// KitchenPreparationResourceProduct
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [kitchenCode] 
@BuiltValue()
abstract class KitchenPreparationResourceProduct implements Built<KitchenPreparationResourceProduct, KitchenPreparationResourceProductBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'kitchen_code')
  String? get kitchenCode;

  KitchenPreparationResourceProduct._();

  factory KitchenPreparationResourceProduct([void updates(KitchenPreparationResourceProductBuilder b)]) = _$KitchenPreparationResourceProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KitchenPreparationResourceProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KitchenPreparationResourceProduct> get serializer => _$KitchenPreparationResourceProductSerializer();
}

class _$KitchenPreparationResourceProductSerializer implements PrimitiveSerializer<KitchenPreparationResourceProduct> {
  @override
  final Iterable<Type> types = const [KitchenPreparationResourceProduct, _$KitchenPreparationResourceProduct];

  @override
  final String wireName = r'KitchenPreparationResourceProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KitchenPreparationResourceProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.kitchenCode != null) {
      yield r'kitchen_code';
      yield serializers.serialize(
        object.kitchenCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KitchenPreparationResourceProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KitchenPreparationResourceProductBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'kitchen_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchenCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KitchenPreparationResourceProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenPreparationResourceProductBuilder();
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

