//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loyal_customer.g.dart';

/// LoyalCustomer
///
/// Properties:
/// * [customerCode] 
/// * [customerName] 
/// * [netAmount] 
@BuiltValue()
abstract class LoyalCustomer implements Built<LoyalCustomer, LoyalCustomerBuilder> {
  @BuiltValueField(wireName: r'customer_code')
  String? get customerCode;

  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: r'net_amount')
  double? get netAmount;

  LoyalCustomer._();

  factory LoyalCustomer([void updates(LoyalCustomerBuilder b)]) = _$LoyalCustomer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoyalCustomerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoyalCustomer> get serializer => _$LoyalCustomerSerializer();
}

class _$LoyalCustomerSerializer implements PrimitiveSerializer<LoyalCustomer> {
  @override
  final Iterable<Type> types = const [LoyalCustomer, _$LoyalCustomer];

  @override
  final String wireName = r'LoyalCustomer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoyalCustomer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerCode != null) {
      yield r'customer_code';
      yield serializers.serialize(
        object.customerCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.netAmount != null) {
      yield r'net_amount';
      yield serializers.serialize(
        object.netAmount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoyalCustomer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoyalCustomerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customer_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerCode = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'net_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.netAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoyalCustomer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoyalCustomerBuilder();
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

