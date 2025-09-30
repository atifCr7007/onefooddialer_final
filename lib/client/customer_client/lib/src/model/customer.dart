//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer.g.dart';

/// Customer
///
/// Properties:
/// * [pkCustomerCode] 
/// * [customerName] 
/// * [phone] 
/// * [emailAddress] 
/// * [customerAddress] 
/// * [locationCode] 
/// * [locationName] 
/// * [foodPreference] 
/// * [city] 
/// * [cityName] 
/// * [companyName] 
/// * [status] 
/// * [phoneVerified] 
/// * [emailVerified] 
/// * [registeredOn] 
/// * [companyId] 
/// * [unitId] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Customer implements Built<Customer, CustomerBuilder> {
  @BuiltValueField(wireName: r'pk_customer_code')
  int? get pkCustomerCode;

  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email_address')
  String? get emailAddress;

  @BuiltValueField(wireName: r'customer_Address')
  String? get customerAddress;

  @BuiltValueField(wireName: r'location_code')
  String? get locationCode;

  @BuiltValueField(wireName: r'location_name')
  String? get locationName;

  @BuiltValueField(wireName: r'food_preference')
  String? get foodPreference;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'city_name')
  String? get cityName;

  @BuiltValueField(wireName: r'company_name')
  String? get companyName;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'phone_verified')
  bool? get phoneVerified;

  @BuiltValueField(wireName: r'email_verified')
  bool? get emailVerified;

  @BuiltValueField(wireName: r'registered_on')
  DateTime? get registeredOn;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  Customer._();

  factory Customer([void updates(CustomerBuilder b)]) = _$Customer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Customer> get serializer => _$CustomerSerializer();
}

class _$CustomerSerializer implements PrimitiveSerializer<Customer> {
  @override
  final Iterable<Type> types = const [Customer, _$Customer];

  @override
  final String wireName = r'Customer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Customer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pkCustomerCode != null) {
      yield r'pk_customer_code';
      yield serializers.serialize(
        object.pkCustomerCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.emailAddress != null) {
      yield r'email_address';
      yield serializers.serialize(
        object.emailAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerAddress != null) {
      yield r'customer_Address';
      yield serializers.serialize(
        object.customerAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.locationCode != null) {
      yield r'location_code';
      yield serializers.serialize(
        object.locationCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.locationName != null) {
      yield r'location_name';
      yield serializers.serialize(
        object.locationName,
        specifiedType: const FullType(String),
      );
    }
    if (object.foodPreference != null) {
      yield r'food_preference';
      yield serializers.serialize(
        object.foodPreference,
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
    if (object.cityName != null) {
      yield r'city_name';
      yield serializers.serialize(
        object.cityName,
        specifiedType: const FullType(String),
      );
    }
    if (object.companyName != null) {
      yield r'company_name';
      yield serializers.serialize(
        object.companyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.phoneVerified != null) {
      yield r'phone_verified';
      yield serializers.serialize(
        object.phoneVerified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.emailVerified != null) {
      yield r'email_verified';
      yield serializers.serialize(
        object.emailVerified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.registeredOn != null) {
      yield r'registered_on';
      yield serializers.serialize(
        object.registeredOn,
        specifiedType: const FullType(DateTime),
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
    Customer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pk_customer_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pkCustomerCode = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'email_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emailAddress = valueDes;
          break;
        case r'customer_Address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerAddress = valueDes;
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
        case r'food_preference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.foodPreference = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'city_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cityName = valueDes;
          break;
        case r'company_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.companyName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'phone_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.phoneVerified = valueDes;
          break;
        case r'email_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailVerified = valueDes;
          break;
        case r'registered_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.registeredOn = valueDes;
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
  Customer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerBuilder();
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

