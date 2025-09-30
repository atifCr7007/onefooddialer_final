//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/invoices_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_get200_response.g.dart';

/// InvoicesGet200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class InvoicesGet200Response implements Built<InvoicesGet200Response, InvoicesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'data')
  InvoicesGet200ResponseData get data;

  InvoicesGet200Response._();

  factory InvoicesGet200Response([void updates(InvoicesGet200ResponseBuilder b)]) = _$InvoicesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesGet200Response> get serializer => _$InvoicesGet200ResponseSerializer();
}

class _$InvoicesGet200ResponseSerializer implements PrimitiveSerializer<InvoicesGet200Response> {
  @override
  final Iterable<Type> types = const [InvoicesGet200Response, _$InvoicesGet200Response];

  @override
  final String wireName = r'InvoicesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesGet200Response object, {
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
      specifiedType: const FullType(InvoicesGet200ResponseData),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesGet200ResponseBuilder result,
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
            specifiedType: const FullType(InvoicesGet200ResponseData),
          ) as InvoicesGet200ResponseData;
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
  InvoicesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesGet200ResponseBuilder();
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

