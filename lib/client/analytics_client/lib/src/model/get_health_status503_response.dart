//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_health_status503_response_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_health_status503_response.g.dart';

/// GetHealthStatus503Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [details] 
@BuiltValue()
abstract class GetHealthStatus503Response implements Built<GetHealthStatus503Response, GetHealthStatus503ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'details')
  GetHealthStatus503ResponseDetails? get details;

  GetHealthStatus503Response._();

  factory GetHealthStatus503Response([void updates(GetHealthStatus503ResponseBuilder b)]) = _$GetHealthStatus503Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetHealthStatus503ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetHealthStatus503Response> get serializer => _$GetHealthStatus503ResponseSerializer();
}

class _$GetHealthStatus503ResponseSerializer implements PrimitiveSerializer<GetHealthStatus503Response> {
  @override
  final Iterable<Type> types = const [GetHealthStatus503Response, _$GetHealthStatus503Response];

  @override
  final String wireName = r'GetHealthStatus503Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetHealthStatus503Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(GetHealthStatus503ResponseDetails),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetHealthStatus503Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetHealthStatus503ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetHealthStatus503ResponseDetails),
          ) as GetHealthStatus503ResponseDetails;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetHealthStatus503Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHealthStatus503ResponseBuilder();
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

