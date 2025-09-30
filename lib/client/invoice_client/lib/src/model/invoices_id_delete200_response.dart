//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_id_delete200_response.g.dart';

/// InvoicesIdDelete200Response
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class InvoicesIdDelete200Response implements Built<InvoicesIdDelete200Response, InvoicesIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  InvoicesIdDelete200Response._();

  factory InvoicesIdDelete200Response([void updates(InvoicesIdDelete200ResponseBuilder b)]) = _$InvoicesIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesIdDelete200Response> get serializer => _$InvoicesIdDelete200ResponseSerializer();
}

class _$InvoicesIdDelete200ResponseSerializer implements PrimitiveSerializer<InvoicesIdDelete200Response> {
  @override
  final Iterable<Type> types = const [InvoicesIdDelete200Response, _$InvoicesIdDelete200Response];

  @override
  final String wireName = r'InvoicesIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesIdDelete200Response object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesIdDelete200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvoicesIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesIdDelete200ResponseBuilder();
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

