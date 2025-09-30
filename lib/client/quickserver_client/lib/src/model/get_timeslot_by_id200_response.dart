//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/timeslot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_timeslot_by_id200_response.g.dart';

/// GetTimeslotById200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class GetTimeslotById200Response implements Built<GetTimeslotById200Response, GetTimeslotById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Timeslot? get data;

  GetTimeslotById200Response._();

  factory GetTimeslotById200Response([void updates(GetTimeslotById200ResponseBuilder b)]) = _$GetTimeslotById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTimeslotById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTimeslotById200Response> get serializer => _$GetTimeslotById200ResponseSerializer();
}

class _$GetTimeslotById200ResponseSerializer implements PrimitiveSerializer<GetTimeslotById200Response> {
  @override
  final Iterable<Type> types = const [GetTimeslotById200Response, _$GetTimeslotById200Response];

  @override
  final String wireName = r'GetTimeslotById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTimeslotById200Response object, {
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
    GetTimeslotById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTimeslotById200ResponseBuilder result,
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
  GetTimeslotById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTimeslotById200ResponseBuilder();
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

