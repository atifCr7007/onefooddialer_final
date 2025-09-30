//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/payment_callback_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_callback_response.g.dart';

/// PaymentCallbackResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [message] - Response message
/// * [data] 
@BuiltValue()
abstract class PaymentCallbackResponse implements Built<PaymentCallbackResponse, PaymentCallbackResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Response message
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  PaymentCallbackResponseData? get data;

  PaymentCallbackResponse._();

  factory PaymentCallbackResponse([void updates(PaymentCallbackResponseBuilder b)]) = _$PaymentCallbackResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentCallbackResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentCallbackResponse> get serializer => _$PaymentCallbackResponseSerializer();
}

class _$PaymentCallbackResponseSerializer implements PrimitiveSerializer<PaymentCallbackResponse> {
  @override
  final Iterable<Type> types = const [PaymentCallbackResponse, _$PaymentCallbackResponse];

  @override
  final String wireName = r'PaymentCallbackResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentCallbackResponse object, {
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
        specifiedType: const FullType(PaymentCallbackResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentCallbackResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentCallbackResponseBuilder result,
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
            specifiedType: const FullType(PaymentCallbackResponseData),
          ) as PaymentCallbackResponseData;
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
  PaymentCallbackResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentCallbackResponseBuilder();
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

