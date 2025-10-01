//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/update_config_by_key200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_config_by_key200_response.g.dart';

/// UpdateConfigByKey200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class UpdateConfigByKey200Response implements Built<UpdateConfigByKey200Response, UpdateConfigByKey200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  UpdateConfigByKey200ResponseData? get data;

  UpdateConfigByKey200Response._();

  factory UpdateConfigByKey200Response([void updates(UpdateConfigByKey200ResponseBuilder b)]) = _$UpdateConfigByKey200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConfigByKey200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConfigByKey200Response> get serializer => _$UpdateConfigByKey200ResponseSerializer();
}

class _$UpdateConfigByKey200ResponseSerializer implements PrimitiveSerializer<UpdateConfigByKey200Response> {
  @override
  final Iterable<Type> types = const [UpdateConfigByKey200Response, _$UpdateConfigByKey200Response];

  @override
  final String wireName = r'UpdateConfigByKey200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConfigByKey200Response object, {
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
        specifiedType: const FullType(UpdateConfigByKey200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateConfigByKey200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConfigByKey200ResponseBuilder result,
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
            specifiedType: const FullType(UpdateConfigByKey200ResponseData),
          ) as UpdateConfigByKey200ResponseData;
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
  UpdateConfigByKey200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConfigByKey200ResponseBuilder();
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

