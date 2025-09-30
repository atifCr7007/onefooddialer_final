//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/initiate_payment_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initiate_payment_response.g.dart';

/// InitiatePaymentResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [message] - Response message
/// * [data] 
@BuiltValue()
abstract class InitiatePaymentResponse implements Built<InitiatePaymentResponse, InitiatePaymentResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Response message
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  InitiatePaymentResponseData? get data;

  InitiatePaymentResponse._();

  factory InitiatePaymentResponse([void updates(InitiatePaymentResponseBuilder b)]) = _$InitiatePaymentResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitiatePaymentResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitiatePaymentResponse> get serializer => _$InitiatePaymentResponseSerializer();
}

class _$InitiatePaymentResponseSerializer implements PrimitiveSerializer<InitiatePaymentResponse> {
  @override
  final Iterable<Type> types = const [InitiatePaymentResponse, _$InitiatePaymentResponse];

  @override
  final String wireName = r'InitiatePaymentResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitiatePaymentResponse object, {
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
        specifiedType: const FullType(InitiatePaymentResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InitiatePaymentResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InitiatePaymentResponseBuilder result,
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
            specifiedType: const FullType(InitiatePaymentResponseData),
          ) as InitiatePaymentResponseData;
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
  InitiatePaymentResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiatePaymentResponseBuilder();
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

