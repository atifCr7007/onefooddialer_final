//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_payment_request.g.dart';

/// ProcessPaymentRequest
///
/// Properties:
/// * [gateway] - Payment gateway to use
@BuiltValue()
abstract class ProcessPaymentRequest implements Built<ProcessPaymentRequest, ProcessPaymentRequestBuilder> {
  /// Payment gateway to use
  @BuiltValueField(wireName: r'gateway')
  ProcessPaymentRequestGatewayEnum get gateway;
  // enum gatewayEnum {  payu,  instamojo,  paytm,  payeezy,  mobikwik,  paypal,  converge,  yesbank,  stripe,  };

  ProcessPaymentRequest._();

  factory ProcessPaymentRequest([void updates(ProcessPaymentRequestBuilder b)]) = _$ProcessPaymentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessPaymentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessPaymentRequest> get serializer => _$ProcessPaymentRequestSerializer();
}

class _$ProcessPaymentRequestSerializer implements PrimitiveSerializer<ProcessPaymentRequest> {
  @override
  final Iterable<Type> types = const [ProcessPaymentRequest, _$ProcessPaymentRequest];

  @override
  final String wireName = r'ProcessPaymentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessPaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'gateway';
    yield serializers.serialize(
      object.gateway,
      specifiedType: const FullType(ProcessPaymentRequestGatewayEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessPaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessPaymentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gateway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProcessPaymentRequestGatewayEnum),
          ) as ProcessPaymentRequestGatewayEnum;
          result.gateway = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessPaymentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessPaymentRequestBuilder();
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

class ProcessPaymentRequestGatewayEnum extends EnumClass {

  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'payu')
  static const ProcessPaymentRequestGatewayEnum payu = _$processPaymentRequestGatewayEnum_payu;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'instamojo')
  static const ProcessPaymentRequestGatewayEnum instamojo = _$processPaymentRequestGatewayEnum_instamojo;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'paytm')
  static const ProcessPaymentRequestGatewayEnum paytm = _$processPaymentRequestGatewayEnum_paytm;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'payeezy')
  static const ProcessPaymentRequestGatewayEnum payeezy = _$processPaymentRequestGatewayEnum_payeezy;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'mobikwik')
  static const ProcessPaymentRequestGatewayEnum mobikwik = _$processPaymentRequestGatewayEnum_mobikwik;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'paypal')
  static const ProcessPaymentRequestGatewayEnum paypal = _$processPaymentRequestGatewayEnum_paypal;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'converge')
  static const ProcessPaymentRequestGatewayEnum converge = _$processPaymentRequestGatewayEnum_converge;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'yesbank')
  static const ProcessPaymentRequestGatewayEnum yesbank = _$processPaymentRequestGatewayEnum_yesbank;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'stripe')
  static const ProcessPaymentRequestGatewayEnum stripe = _$processPaymentRequestGatewayEnum_stripe;
  /// Payment gateway to use
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProcessPaymentRequestGatewayEnum unknownDefaultOpenApi = _$processPaymentRequestGatewayEnum_unknownDefaultOpenApi;

  static Serializer<ProcessPaymentRequestGatewayEnum> get serializer => _$processPaymentRequestGatewayEnumSerializer;

  const ProcessPaymentRequestGatewayEnum._(String name): super(name);

  static BuiltSet<ProcessPaymentRequestGatewayEnum> get values => _$processPaymentRequestGatewayEnumValues;
  static ProcessPaymentRequestGatewayEnum valueOf(String name) => _$processPaymentRequestGatewayEnumValueOf(name);
}

