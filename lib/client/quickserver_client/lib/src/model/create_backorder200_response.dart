//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/backorder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_backorder200_response.g.dart';

/// CreateBackorder200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CreateBackorder200Response implements Built<CreateBackorder200Response, CreateBackorder200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Backorder? get data;

  CreateBackorder200Response._();

  factory CreateBackorder200Response([void updates(CreateBackorder200ResponseBuilder b)]) = _$CreateBackorder200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBackorder200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBackorder200Response> get serializer => _$CreateBackorder200ResponseSerializer();
}

class _$CreateBackorder200ResponseSerializer implements PrimitiveSerializer<CreateBackorder200Response> {
  @override
  final Iterable<Type> types = const [CreateBackorder200Response, _$CreateBackorder200Response];

  @override
  final String wireName = r'CreateBackorder200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBackorder200Response object, {
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
    CreateBackorder200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBackorder200ResponseBuilder result,
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
  CreateBackorder200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBackorder200ResponseBuilder();
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

