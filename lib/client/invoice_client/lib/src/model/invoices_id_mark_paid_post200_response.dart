//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/invoice.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_id_mark_paid_post200_response.g.dart';

/// InvoicesIdMarkPaidPost200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class InvoicesIdMarkPaidPost200Response implements Built<InvoicesIdMarkPaidPost200Response, InvoicesIdMarkPaidPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'data')
  Invoice get data;

  InvoicesIdMarkPaidPost200Response._();

  factory InvoicesIdMarkPaidPost200Response([void updates(InvoicesIdMarkPaidPost200ResponseBuilder b)]) = _$InvoicesIdMarkPaidPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesIdMarkPaidPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesIdMarkPaidPost200Response> get serializer => _$InvoicesIdMarkPaidPost200ResponseSerializer();
}

class _$InvoicesIdMarkPaidPost200ResponseSerializer implements PrimitiveSerializer<InvoicesIdMarkPaidPost200Response> {
  @override
  final Iterable<Type> types = const [InvoicesIdMarkPaidPost200Response, _$InvoicesIdMarkPaidPost200Response];

  @override
  final String wireName = r'InvoicesIdMarkPaidPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesIdMarkPaidPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(Invoice),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesIdMarkPaidPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesIdMarkPaidPost200ResponseBuilder result,
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
            specifiedType: const FullType(Invoice),
          ) as Invoice;
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
  InvoicesIdMarkPaidPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesIdMarkPaidPost200ResponseBuilder();
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

