//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kitchen_kitchen_master.g.dart';

/// KitchenKitchenMaster
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [alias] 
/// * [location] 
@BuiltValue()
abstract class KitchenKitchenMaster implements Built<KitchenKitchenMaster, KitchenKitchenMasterBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'alias')
  String? get alias;

  @BuiltValueField(wireName: r'location')
  String? get location;

  KitchenKitchenMaster._();

  factory KitchenKitchenMaster([void updates(KitchenKitchenMasterBuilder b)]) = _$KitchenKitchenMaster;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KitchenKitchenMasterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KitchenKitchenMaster> get serializer => _$KitchenKitchenMasterSerializer();
}

class _$KitchenKitchenMasterSerializer implements PrimitiveSerializer<KitchenKitchenMaster> {
  @override
  final Iterable<Type> types = const [KitchenKitchenMaster, _$KitchenKitchenMaster];

  @override
  final String wireName = r'KitchenKitchenMaster';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KitchenKitchenMaster object, {
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
    if (object.alias != null) {
      yield r'alias';
      yield serializers.serialize(
        object.alias,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KitchenKitchenMaster object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KitchenKitchenMasterBuilder result,
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
        case r'alias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alias = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KitchenKitchenMaster deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenKitchenMasterBuilder();
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

