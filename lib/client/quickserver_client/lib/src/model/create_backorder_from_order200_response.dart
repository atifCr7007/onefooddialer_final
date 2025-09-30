//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/backorder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_backorder_from_order200_response.g.dart';

/// CreateBackorderFromOrder200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CreateBackorderFromOrder200Response implements Built<CreateBackorderFromOrder200Response, CreateBackorderFromOrder200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Backorder? get data;

  CreateBackorderFromOrder200Response._();

  factory CreateBackorderFromOrder200Response([void updates(CreateBackorderFromOrder200ResponseBuilder b)]) = _$CreateBackorderFromOrder200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBackorderFromOrder200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBackorderFromOrder200Response> get serializer => _$CreateBackorderFromOrder200ResponseSerializer();
}

class _$CreateBackorderFromOrder200ResponseSerializer implements PrimitiveSerializer<CreateBackorderFromOrder200Response> {
  @override
  final Iterable<Type> types = const [CreateBackorderFromOrder200Response, _$CreateBackorderFromOrder200Response];

  @override
  final String wireName = r'CreateBackorderFromOrder200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBackorderFromOrder200Response object, {
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
        specifiedType: const FullType(Backorder),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBackorderFromOrder200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBackorderFromOrder200ResponseBuilder result,
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
            specifiedType: const FullType(Backorder),
          ) as Backorder;
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
  CreateBackorderFromOrder200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBackorderFromOrder200ResponseBuilder();
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

