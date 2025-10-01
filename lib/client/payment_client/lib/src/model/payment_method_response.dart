//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:payment_client/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_method_response.g.dart';

/// PaymentMethodResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [message] - Response message
/// * [data] 
@BuiltValue()
abstract class PaymentMethodResponse implements Built<PaymentMethodResponse, PaymentMethodResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Response message
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  PaymentMethod? get data;

  PaymentMethodResponse._();

  factory PaymentMethodResponse([void updates(PaymentMethodResponseBuilder b)]) = _$PaymentMethodResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentMethodResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentMethodResponse> get serializer => _$PaymentMethodResponseSerializer();
}

class _$PaymentMethodResponseSerializer implements PrimitiveSerializer<PaymentMethodResponse> {
  @override
  final Iterable<Type> types = const [PaymentMethodResponse, _$PaymentMethodResponse];

  @override
  final String wireName = r'PaymentMethodResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentMethodResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(PaymentMethod),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentMethodResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentMethodResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentMethod),
          ) as PaymentMethod;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentMethodResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentMethodResponseBuilder();
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

