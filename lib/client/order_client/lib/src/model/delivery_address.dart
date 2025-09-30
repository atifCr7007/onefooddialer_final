//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_address.g.dart';

/// DeliveryAddress
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [label] 
/// * [addressLine1] 
/// * [addressLine2] 
/// * [city] 
/// * [state] 
/// * [postalCode] 
/// * [country] 
/// * [latitude] 
/// * [longitude] 
/// * [landmark] 
/// * [contactName] 
/// * [contactPhone] 
@BuiltValue()
abstract class DeliveryAddress implements Built<DeliveryAddress, DeliveryAddressBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  DeliveryAddressTypeEnum? get type;
  // enum typeEnum {  home,  work,  other,  };

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'addressLine1')
  String? get addressLine1;

  @BuiltValueField(wireName: r'addressLine2')
  String? get addressLine2;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'state')
  String? get state;

  @BuiltValueField(wireName: r'postalCode')
  String? get postalCode;

  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  @BuiltValueField(wireName: r'landmark')
  String? get landmark;

  @BuiltValueField(wireName: r'contactName')
  String? get contactName;

  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  DeliveryAddress._();

  factory DeliveryAddress([void updates(DeliveryAddressBuilder b)]) = _$DeliveryAddress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryAddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryAddress> get serializer => _$DeliveryAddressSerializer();
}

class _$DeliveryAddressSerializer implements PrimitiveSerializer<DeliveryAddress> {
  @override
  final Iterable<Type> types = const [DeliveryAddress, _$DeliveryAddress];

  @override
  final String wireName = r'DeliveryAddress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(DeliveryAddressTypeEnum),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressLine1 != null) {
      yield r'addressLine1';
      yield serializers.serialize(
        object.addressLine1,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressLine2 != null) {
      yield r'addressLine2';
      yield serializers.serialize(
        object.addressLine2,
        specifiedType: const FullType(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    if (object.postalCode != null) {
      yield r'postalCode';
      yield serializers.serialize(
        object.postalCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.landmark != null) {
      yield r'landmark';
      yield serializers.serialize(
        object.landmark,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactName != null) {
      yield r'contactName';
      yield serializers.serialize(
        object.contactName,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPhone != null) {
      yield r'contactPhone';
      yield serializers.serialize(
        object.contactPhone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryAddressBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryAddressTypeEnum),
          ) as DeliveryAddressTypeEnum;
          result.type = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'addressLine1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressLine1 = valueDes;
          break;
        case r'addressLine2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressLine2 = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'postalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postalCode = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.longitude = valueDes;
          break;
        case r'landmark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.landmark = valueDes;
          break;
        case r'contactName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactName = valueDes;
          break;
        case r'contactPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactPhone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryAddress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryAddressBuilder();
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

class DeliveryAddressTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'home')
  static const DeliveryAddressTypeEnum home = _$deliveryAddressTypeEnum_home;
  @BuiltValueEnumConst(wireName: r'work')
  static const DeliveryAddressTypeEnum work = _$deliveryAddressTypeEnum_work;
  @BuiltValueEnumConst(wireName: r'other')
  static const DeliveryAddressTypeEnum other = _$deliveryAddressTypeEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeliveryAddressTypeEnum unknownDefaultOpenApi = _$deliveryAddressTypeEnum_unknownDefaultOpenApi;

  static Serializer<DeliveryAddressTypeEnum> get serializer => _$deliveryAddressTypeEnumSerializer;

  const DeliveryAddressTypeEnum._(String name): super(name);

  static BuiltSet<DeliveryAddressTypeEnum> get values => _$deliveryAddressTypeEnumValues;
  static DeliveryAddressTypeEnum valueOf(String name) => _$deliveryAddressTypeEnumValueOf(name);
}

