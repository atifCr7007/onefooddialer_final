//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_preference.g.dart';

/// CustomerPreference
///
/// Properties:
/// * [customerCode] 
/// * [customerName] 
/// * [productName] 
/// * [netAmount] 
@BuiltValue()
abstract class CustomerPreference implements Built<CustomerPreference, CustomerPreferenceBuilder> {
  @BuiltValueField(wireName: r'customer_code')
  String? get customerCode;

  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: r'product_name')
  String? get productName;

  @BuiltValueField(wireName: r'net_amount')
  double? get netAmount;

  CustomerPreference._();

  factory CustomerPreference([void updates(CustomerPreferenceBuilder b)]) = _$CustomerPreference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerPreferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerPreference> get serializer => _$CustomerPreferenceSerializer();
}

class _$CustomerPreferenceSerializer implements PrimitiveSerializer<CustomerPreference> {
  @override
  final Iterable<Type> types = const [CustomerPreference, _$CustomerPreference];

  @override
  final String wireName = r'CustomerPreference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerPreference object, {
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
    if (object.productName != null) {
      yield r'product_name';
      yield serializers.serialize(
        object.productName,
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
    CustomerPreference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerPreferenceBuilder result,
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
        case r'product_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
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
  CustomerPreference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerPreferenceBuilder();
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

