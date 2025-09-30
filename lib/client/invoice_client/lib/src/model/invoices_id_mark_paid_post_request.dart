//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_id_mark_paid_post_request.g.dart';

/// InvoicesIdMarkPaidPostRequest
///
/// Properties:
/// * [paymentMethod] - Payment method used
/// * [paymentReference] - Payment reference or transaction ID
@BuiltValue()
abstract class InvoicesIdMarkPaidPostRequest implements Built<InvoicesIdMarkPaidPostRequest, InvoicesIdMarkPaidPostRequestBuilder> {
  /// Payment method used
  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  /// Payment reference or transaction ID
  @BuiltValueField(wireName: r'payment_reference')
  String? get paymentReference;

  InvoicesIdMarkPaidPostRequest._();

  factory InvoicesIdMarkPaidPostRequest([void updates(InvoicesIdMarkPaidPostRequestBuilder b)]) = _$InvoicesIdMarkPaidPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesIdMarkPaidPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesIdMarkPaidPostRequest> get serializer => _$InvoicesIdMarkPaidPostRequestSerializer();
}

class _$InvoicesIdMarkPaidPostRequestSerializer implements PrimitiveSerializer<InvoicesIdMarkPaidPostRequest> {
  @override
  final Iterable<Type> types = const [InvoicesIdMarkPaidPostRequest, _$InvoicesIdMarkPaidPostRequest];

  @override
  final String wireName = r'InvoicesIdMarkPaidPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesIdMarkPaidPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentReference != null) {
      yield r'payment_reference';
      yield serializers.serialize(
        object.paymentReference,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesIdMarkPaidPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesIdMarkPaidPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethod = valueDes;
          break;
        case r'payment_reference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentReference = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvoicesIdMarkPaidPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesIdMarkPaidPostRequestBuilder();
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

