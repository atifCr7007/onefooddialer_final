//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/backorder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_backorder200_response.g.dart';

/// UpdateBackorder200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class UpdateBackorder200Response implements Built<UpdateBackorder200Response, UpdateBackorder200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Backorder? get data;

  UpdateBackorder200Response._();

  factory UpdateBackorder200Response([void updates(UpdateBackorder200ResponseBuilder b)]) = _$UpdateBackorder200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateBackorder200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateBackorder200Response> get serializer => _$UpdateBackorder200ResponseSerializer();
}

class _$UpdateBackorder200ResponseSerializer implements PrimitiveSerializer<UpdateBackorder200Response> {
  @override
  final Iterable<Type> types = const [UpdateBackorder200Response, _$UpdateBackorder200Response];

  @override
  final String wireName = r'UpdateBackorder200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateBackorder200Response object, {
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
    UpdateBackorder200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateBackorder200ResponseBuilder result,
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
  UpdateBackorder200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateBackorder200ResponseBuilder();
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

