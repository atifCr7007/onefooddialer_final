//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/payment_mode.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sales_payment_methods_get200_response.g.dart';

/// SalesPaymentMethodsGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class SalesPaymentMethodsGet200Response implements Built<SalesPaymentMethodsGet200Response, SalesPaymentMethodsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<PaymentMode>? get data;

  SalesPaymentMethodsGet200Response._();

  factory SalesPaymentMethodsGet200Response([void updates(SalesPaymentMethodsGet200ResponseBuilder b)]) = _$SalesPaymentMethodsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SalesPaymentMethodsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SalesPaymentMethodsGet200Response> get serializer => _$SalesPaymentMethodsGet200ResponseSerializer();
}

class _$SalesPaymentMethodsGet200ResponseSerializer implements PrimitiveSerializer<SalesPaymentMethodsGet200Response> {
  @override
  final Iterable<Type> types = const [SalesPaymentMethodsGet200Response, _$SalesPaymentMethodsGet200Response];

  @override
  final String wireName = r'SalesPaymentMethodsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SalesPaymentMethodsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(PaymentMode)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SalesPaymentMethodsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SalesPaymentMethodsGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PaymentMode)]),
          ) as BuiltList<PaymentMode>;
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
  SalesPaymentMethodsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SalesPaymentMethodsGet200ResponseBuilder();
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

