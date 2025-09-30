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
/// * [id] - Unique identifier for the customer
/// * [customerName] - Name of the customer
/// * [phone] - Phone number
/// * [emailAddress] - Email address
@BuiltValue()
abstract class Customer implements Built<Customer, CustomerBuilder> {
  /// Unique identifier for the customer
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Name of the customer
  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  /// Phone number
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Email address
  @BuiltValueField(wireName: r'email_address')
  String? get emailAddress;

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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
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

