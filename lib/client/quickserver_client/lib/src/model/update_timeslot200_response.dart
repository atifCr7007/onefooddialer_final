//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/timeslot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_timeslot200_response.g.dart';

/// UpdateTimeslot200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class UpdateTimeslot200Response implements Built<UpdateTimeslot200Response, UpdateTimeslot200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Timeslot? get data;

  UpdateTimeslot200Response._();

  factory UpdateTimeslot200Response([void updates(UpdateTimeslot200ResponseBuilder b)]) = _$UpdateTimeslot200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTimeslot200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTimeslot200Response> get serializer => _$UpdateTimeslot200ResponseSerializer();
}

class _$UpdateTimeslot200ResponseSerializer implements PrimitiveSerializer<UpdateTimeslot200Response> {
  @override
  final Iterable<Type> types = const [UpdateTimeslot200Response, _$UpdateTimeslot200Response];

  @override
  final String wireName = r'UpdateTimeslot200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTimeslot200Response object, {
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
        specifiedType: const FullType(Timeslot),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTimeslot200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTimeslot200ResponseBuilder result,
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
            specifiedType: const FullType(Timeslot),
          ) as Timeslot;
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
  UpdateTimeslot200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTimeslot200ResponseBuilder();
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

