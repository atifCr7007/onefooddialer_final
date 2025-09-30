//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_spending.g.dart';

/// CustomerSpending
///
/// Properties:
/// * [customerName] 
/// * [yearly] 
/// * [monthly] 
@BuiltValue()
abstract class CustomerSpending implements Built<CustomerSpending, CustomerSpendingBuilder> {
  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: r'yearly')
  double? get yearly;

  @BuiltValueField(wireName: r'monthly')
  double? get monthly;

  CustomerSpending._();

  factory CustomerSpending([void updates(CustomerSpendingBuilder b)]) = _$CustomerSpending;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerSpendingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerSpending> get serializer => _$CustomerSpendingSerializer();
}

class _$CustomerSpendingSerializer implements PrimitiveSerializer<CustomerSpending> {
  @override
  final Iterable<Type> types = const [CustomerSpending, _$CustomerSpending];

  @override
  final String wireName = r'CustomerSpending';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerSpending object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(double),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerSpending object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerSpendingBuilder result,
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
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.yearly = valueDes;
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.monthly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerSpending deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerSpendingBuilder();
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

