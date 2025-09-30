//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_update.g.dart';

/// CustomerUpdate
///
/// Properties:
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
/// * [password] 
/// * [companyId] 
/// * [unitId] 
/// * [isGuest] 
/// * [status] 
@BuiltValue()
abstract class CustomerUpdate implements Built<CustomerUpdate, CustomerUpdateBuilder> {
  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'email_address')
  String? get emailAddress;

  @BuiltValueField(wireName: r'customer_address')
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

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'is_guest')
  bool? get isGuest;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  CustomerUpdate._();

  factory CustomerUpdate([void updates(CustomerUpdateBuilder b)]) = _$CustomerUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerUpdate> get serializer => _$CustomerUpdateSerializer();
}

class _$CustomerUpdateSerializer implements PrimitiveSerializer<CustomerUpdate> {
  @override
  final Iterable<Type> types = const [CustomerUpdate, _$CustomerUpdate];

  @override
  final String wireName = r'CustomerUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    if (object.emailAddress != null) {
      yield r'email_address';
      yield serializers.serialize(
        object.emailAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerAddress != null) {
      yield r'customer_address';
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
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
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
    if (object.isGuest != null) {
      yield r'is_guest';
      yield serializers.serialize(
        object.isGuest,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'customer_address':
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
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
        case r'is_guest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGuest = valueDes;
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
  CustomerUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerUpdateBuilder();
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

