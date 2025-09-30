//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_config_group_group_get200_response.g.dart';

/// V2AdminConfigGroupGroupGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class V2AdminConfigGroupGroupGet200Response implements Built<V2AdminConfigGroupGroupGet200Response, V2AdminConfigGroupGroupGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, String>? get data;

  V2AdminConfigGroupGroupGet200Response._();

  factory V2AdminConfigGroupGroupGet200Response([void updates(V2AdminConfigGroupGroupGet200ResponseBuilder b)]) = _$V2AdminConfigGroupGroupGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminConfigGroupGroupGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminConfigGroupGroupGet200Response> get serializer => _$V2AdminConfigGroupGroupGet200ResponseSerializer();
}

class _$V2AdminConfigGroupGroupGet200ResponseSerializer implements PrimitiveSerializer<V2AdminConfigGroupGroupGet200Response> {
  @override
  final Iterable<Type> types = const [V2AdminConfigGroupGroupGet200Response, _$V2AdminConfigGroupGroupGet200Response];

  @override
  final String wireName = r'V2AdminConfigGroupGroupGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminConfigGroupGroupGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminConfigGroupGroupGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminConfigGroupGroupGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
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
  V2AdminConfigGroupGroupGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminConfigGroupGroupGet200ResponseBuilder();
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

