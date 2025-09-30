//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_mode.g.dart';

/// PaymentMode
///
/// Properties:
/// * [paymentMode] 
/// * [count] 
@BuiltValue()
abstract class PaymentMode implements Built<PaymentMode, PaymentModeBuilder> {
  @BuiltValueField(wireName: r'payment_mode')
  String? get paymentMode;

  @BuiltValueField(wireName: r'count')
  int? get count;

  PaymentMode._();

  factory PaymentMode([void updates(PaymentModeBuilder b)]) = _$PaymentMode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentModeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentMode> get serializer => _$PaymentModeSerializer();
}

class _$PaymentModeSerializer implements PrimitiveSerializer<PaymentMode> {
  @override
  final Iterable<Type> types = const [PaymentMode, _$PaymentMode];

  @override
  final String wireName = r'PaymentMode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentMode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.paymentMode != null) {
      yield r'payment_mode';
      yield serializers.serialize(
        object.paymentMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentMode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentModeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payment_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMode = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentModeBuilder();
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

