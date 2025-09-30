//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_methods_response.g.dart';

/// PaymentMethodsResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [data] - Payment methods
@BuiltValue()
abstract class PaymentMethodsResponse implements Built<PaymentMethodsResponse, PaymentMethodsResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Payment methods
  @BuiltValueField(wireName: r'data')
  BuiltList<PaymentMethod>? get data;

  PaymentMethodsResponse._();

  factory PaymentMethodsResponse([void updates(PaymentMethodsResponseBuilder b)]) = _$PaymentMethodsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentMethodsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentMethodsResponse> get serializer => _$PaymentMethodsResponseSerializer();
}

class _$PaymentMethodsResponseSerializer implements PrimitiveSerializer<PaymentMethodsResponse> {
  @override
  final Iterable<Type> types = const [PaymentMethodsResponse, _$PaymentMethodsResponse];

  @override
  final String wireName = r'PaymentMethodsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentMethodsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(PaymentMethod)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentMethodsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentMethodsResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PaymentMethod)]),
          ) as BuiltList<PaymentMethod>;
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
  PaymentMethodsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentMethodsResponseBuilder();
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

