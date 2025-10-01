//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/timeslot.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_timeslots200_response.g.dart';

/// GetTimeslots200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class GetTimeslots200Response implements Built<GetTimeslots200Response, GetTimeslots200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  BuiltList<Timeslot>? get data;

  GetTimeslots200Response._();

  factory GetTimeslots200Response([void updates(GetTimeslots200ResponseBuilder b)]) = _$GetTimeslots200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTimeslots200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTimeslots200Response> get serializer => _$GetTimeslots200ResponseSerializer();
}

class _$GetTimeslots200ResponseSerializer implements PrimitiveSerializer<GetTimeslots200Response> {
  @override
  final Iterable<Type> types = const [GetTimeslots200Response, _$GetTimeslots200Response];

  @override
  final String wireName = r'GetTimeslots200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTimeslots200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Timeslot)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetTimeslots200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTimeslots200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Timeslot)]),
          ) as BuiltList<Timeslot>;
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
  GetTimeslots200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTimeslots200ResponseBuilder();
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

