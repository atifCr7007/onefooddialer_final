//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kitchen_master_input.g.dart';

/// KitchenMasterInput
///
/// Properties:
/// * [companyId] 
/// * [unitId] 
/// * [kitchenName] 
/// * [kitchenAlias] 
/// * [location] 
/// * [locationId] 
/// * [cityId] 
/// * [baseKitchen] 
/// * [kitchenAddress] 
/// * [createdBy] 
/// * [updatedBy] 
/// * [status] 
@BuiltValue()
abstract class KitchenMasterInput implements Built<KitchenMasterInput, KitchenMasterInputBuilder> {
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'kitchen_name')
  String get kitchenName;

  @BuiltValueField(wireName: r'kitchen_alias')
  String? get kitchenAlias;

  @BuiltValueField(wireName: r'location')
  String? get location;

  @BuiltValueField(wireName: r'location_id')
  int? get locationId;

  @BuiltValueField(wireName: r'city_id')
  int? get cityId;

  @BuiltValueField(wireName: r'base_kitchen')
  bool? get baseKitchen;

  @BuiltValueField(wireName: r'kitchen_address')
  String? get kitchenAddress;

  @BuiltValueField(wireName: r'created_by')
  int? get createdBy;

  @BuiltValueField(wireName: r'updated_by')
  int? get updatedBy;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  KitchenMasterInput._();

  factory KitchenMasterInput([void updates(KitchenMasterInputBuilder b)]) = _$KitchenMasterInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KitchenMasterInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KitchenMasterInput> get serializer => _$KitchenMasterInputSerializer();
}

class _$KitchenMasterInputSerializer implements PrimitiveSerializer<KitchenMasterInput> {
  @override
  final Iterable<Type> types = const [KitchenMasterInput, _$KitchenMasterInput];

  @override
  final String wireName = r'KitchenMasterInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KitchenMasterInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'kitchen_name';
    yield serializers.serialize(
      object.kitchenName,
      specifiedType: const FullType(String),
    );
    if (object.kitchenAlias != null) {
      yield r'kitchen_alias';
      yield serializers.serialize(
        object.kitchenAlias,
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
    if (object.locationId != null) {
      yield r'location_id';
      yield serializers.serialize(
        object.locationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.cityId != null) {
      yield r'city_id';
      yield serializers.serialize(
        object.cityId,
        specifiedType: const FullType(int),
      );
    }
    if (object.baseKitchen != null) {
      yield r'base_kitchen';
      yield serializers.serialize(
        object.baseKitchen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.kitchenAddress != null) {
      yield r'kitchen_address';
      yield serializers.serialize(
        object.kitchenAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdBy != null) {
      yield r'created_by';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedBy != null) {
      yield r'updated_by';
      yield serializers.serialize(
        object.updatedBy,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KitchenMasterInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KitchenMasterInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'kitchen_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchenName = valueDes;
          break;
        case r'kitchen_alias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchenAlias = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'location_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.locationId = valueDes;
          break;
        case r'city_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cityId = valueDes;
          break;
        case r'base_kitchen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.baseKitchen = valueDes;
          break;
        case r'kitchen_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchenAddress = valueDes;
          break;
        case r'created_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdBy = valueDes;
          break;
        case r'updated_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedBy = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
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
  KitchenMasterInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenMasterInputBuilder();
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

