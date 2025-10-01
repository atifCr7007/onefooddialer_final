//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location_mapping_create.g.dart';

/// LocationMappingCreate
///
/// Properties:
/// * [companyId] 
/// * [unitId] 
/// * [locationCode] 
/// * [locationName] 
/// * [cityCode] 
/// * [cityName] 
/// * [deliveryCharges] 
/// * [deliveryTime] 
/// * [kitchenCode] 
/// * [kitchenName] 
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class LocationMappingCreate implements Built<LocationMappingCreate, LocationMappingCreateBuilder> {
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'location_code')
  String get locationCode;

  @BuiltValueField(wireName: r'location_name')
  String get locationName;

  @BuiltValueField(wireName: r'city_code')
  String? get cityCode;

  @BuiltValueField(wireName: r'city_name')
  String? get cityName;

  @BuiltValueField(wireName: r'delivery_charges')
  double? get deliveryCharges;

  @BuiltValueField(wireName: r'delivery_time')
  String? get deliveryTime;

  @BuiltValueField(wireName: r'kitchen_code')
  String? get kitchenCode;

  @BuiltValueField(wireName: r'kitchen_name')
  String? get kitchenName;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'status')
  int? get status;

  LocationMappingCreate._();

  factory LocationMappingCreate([void updates(LocationMappingCreateBuilder b)]) = _$LocationMappingCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocationMappingCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LocationMappingCreate> get serializer => _$LocationMappingCreateSerializer();
}

class _$LocationMappingCreateSerializer implements PrimitiveSerializer<LocationMappingCreate> {
  @override
  final Iterable<Type> types = const [LocationMappingCreate, _$LocationMappingCreate];

  @override
  final String wireName = r'LocationMappingCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LocationMappingCreate object, {
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
    yield r'location_code';
    yield serializers.serialize(
      object.locationCode,
      specifiedType: const FullType(String),
    );
    yield r'location_name';
    yield serializers.serialize(
      object.locationName,
      specifiedType: const FullType(String),
    );
    if (object.cityCode != null) {
      yield r'city_code';
      yield serializers.serialize(
        object.cityCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.cityName != null) {
      yield r'city_name';
      yield serializers.serialize(
        object.cityName,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryCharges != null) {
      yield r'delivery_charges';
      yield serializers.serialize(
        object.deliveryCharges,
        specifiedType: const FullType(double),
      );
    }
    if (object.deliveryTime != null) {
      yield r'delivery_time';
      yield serializers.serialize(
        object.deliveryTime,
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
    if (object.kitchenName != null) {
      yield r'kitchen_name';
      yield serializers.serialize(
        object.kitchenName,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LocationMappingCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LocationMappingCreateBuilder result,
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
        case r'location_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locationCode = valueDes;
          break;
        case r'location_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locationName = valueDes;
          break;
        case r'city_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cityCode = valueDes;
          break;
        case r'city_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cityName = valueDes;
          break;
        case r'delivery_charges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.deliveryCharges = valueDes;
          break;
        case r'delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryTime = valueDes;
          break;
        case r'kitchen_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchenCode = valueDes;
          break;
        case r'kitchen_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchenName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  LocationMappingCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocationMappingCreateBuilder();
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

