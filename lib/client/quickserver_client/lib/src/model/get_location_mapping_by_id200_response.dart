//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/location_mapping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_location_mapping_by_id200_response.g.dart';

/// GetLocationMappingById200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class GetLocationMappingById200Response implements Built<GetLocationMappingById200Response, GetLocationMappingById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  LocationMapping? get data;

  GetLocationMappingById200Response._();

  factory GetLocationMappingById200Response([void updates(GetLocationMappingById200ResponseBuilder b)]) = _$GetLocationMappingById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLocationMappingById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLocationMappingById200Response> get serializer => _$GetLocationMappingById200ResponseSerializer();
}

class _$GetLocationMappingById200ResponseSerializer implements PrimitiveSerializer<GetLocationMappingById200Response> {
  @override
  final Iterable<Type> types = const [GetLocationMappingById200Response, _$GetLocationMappingById200Response];

  @override
  final String wireName = r'GetLocationMappingById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLocationMappingById200Response object, {
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
        specifiedType: const FullType(LocationMapping),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLocationMappingById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetLocationMappingById200ResponseBuilder result,
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
            specifiedType: const FullType(LocationMapping),
          ) as LocationMapping;
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
  GetLocationMappingById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLocationMappingById200ResponseBuilder();
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

