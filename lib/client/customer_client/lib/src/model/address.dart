//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

/// Address
///
/// Properties:
/// * [pkCustomerAddressCode] 
/// * [customerCode] 
/// * [addressType] 
/// * [addressName] 
/// * [addressLine1] 
/// * [addressLine2] 
/// * [landmark] 
/// * [city] 
/// * [state] 
/// * [country] 
/// * [pincode] 
/// * [latitude] 
/// * [longitude] 
/// * [isDefault] 
/// * [status] 
/// * [companyId] 
/// * [unitId] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Address implements Built<Address, AddressBuilder> {
  @BuiltValueField(wireName: r'pk_customer_address_code')
  int? get pkCustomerAddressCode;

  @BuiltValueField(wireName: r'customer_code')
  int? get customerCode;

  @BuiltValueField(wireName: r'address_type')
  String? get addressType;

  @BuiltValueField(wireName: r'address_name')
  String? get addressName;

  @BuiltValueField(wireName: r'address_line1')
  String? get addressLine1;

  @BuiltValueField(wireName: r'address_line2')
  String? get addressLine2;

  @BuiltValueField(wireName: r'landmark')
  String? get landmark;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'state')
  String? get state;

  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'pincode')
  String? get pincode;

  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  @BuiltValueField(wireName: r'is_default')
  bool? get isDefault;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  Address._();

  factory Address([void updates(AddressBuilder b)]) = _$Address;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Address> get serializer => _$AddressSerializer();
}

class _$AddressSerializer implements PrimitiveSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];

  @override
  final String wireName = r'Address';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Address object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pkCustomerAddressCode != null) {
      yield r'pk_customer_address_code';
      yield serializers.serialize(
        object.pkCustomerAddressCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerCode != null) {
      yield r'customer_code';
      yield serializers.serialize(
        object.customerCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.addressType != null) {
      yield r'address_type';
      yield serializers.serialize(
        object.addressType,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressName != null) {
      yield r'address_name';
      yield serializers.serialize(
        object.addressName,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressLine1 != null) {
      yield r'address_line1';
      yield serializers.serialize(
        object.addressLine1,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressLine2 != null) {
      yield r'address_line2';
      yield serializers.serialize(
        object.addressLine2,
        specifiedType: const FullType(String),
      );
    }
    if (object.landmark != null) {
      yield r'landmark';
      yield serializers.serialize(
        object.landmark,
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
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(String),
      );
    }
    if (object.pincode != null) {
      yield r'pincode';
      yield serializers.serialize(
        object.pincode,
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
    if (object.isDefault != null) {
      yield r'is_default';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
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
    Address object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pk_customer_address_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pkCustomerAddressCode = valueDes;
          break;
        case r'customer_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerCode = valueDes;
          break;
        case r'address_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressType = valueDes;
          break;
        case r'address_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressName = valueDes;
          break;
        case r'address_line1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressLine1 = valueDes;
          break;
        case r'address_line2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressLine2 = valueDes;
          break;
        case r'landmark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.landmark = valueDes;
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
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        case r'pincode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pincode = valueDes;
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
        case r'is_default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
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
  Address deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressBuilder();
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

