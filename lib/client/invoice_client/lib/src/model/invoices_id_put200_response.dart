//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/invoice.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_id_put200_response.g.dart';

/// InvoicesIdPut200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class InvoicesIdPut200Response implements Built<InvoicesIdPut200Response, InvoicesIdPut200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'data')
  Invoice get data;

  InvoicesIdPut200Response._();

  factory InvoicesIdPut200Response([void updates(InvoicesIdPut200ResponseBuilder b)]) = _$InvoicesIdPut200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesIdPut200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesIdPut200Response> get serializer => _$InvoicesIdPut200ResponseSerializer();
}

class _$InvoicesIdPut200ResponseSerializer implements PrimitiveSerializer<InvoicesIdPut200Response> {
  @override
  final Iterable<Type> types = const [InvoicesIdPut200Response, _$InvoicesIdPut200Response];

  @override
  final String wireName = r'InvoicesIdPut200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesIdPut200Response object, {
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
    InvoicesIdPut200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesIdPut200ResponseBuilder result,
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
  InvoicesIdPut200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesIdPut200ResponseBuilder();
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

