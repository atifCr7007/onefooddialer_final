//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'success_response.g.dart';

/// SuccessResponse
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [timestamp] 
@BuiltValue()
abstract class SuccessResponse implements Built<SuccessResponse, SuccessResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  SuccessResponseStatusEnum get status;
  // enum statusEnum {  success,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  SuccessResponse._();

  factory SuccessResponse([void updates(SuccessResponseBuilder b)]) = _$SuccessResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SuccessResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SuccessResponse> get serializer => _$SuccessResponseSerializer();
}

class _$SuccessResponseSerializer implements PrimitiveSerializer<SuccessResponse> {
  @override
  final Iterable<Type> types = const [SuccessResponse, _$SuccessResponse];

  @override
  final String wireName = r'SuccessResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SuccessResponseStatusEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SuccessResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SuccessResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SuccessResponseStatusEnum),
          ) as SuccessResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SuccessResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SuccessResponseBuilder();
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

class SuccessResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'success')
  static const SuccessResponseStatusEnum success = _$successResponseStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SuccessResponseStatusEnum unknownDefaultOpenApi = _$successResponseStatusEnum_unknownDefaultOpenApi;

  static Serializer<SuccessResponseStatusEnum> get serializer => _$successResponseStatusEnumSerializer;

  const SuccessResponseStatusEnum._(String name): super(name);

  static BuiltSet<SuccessResponseStatusEnum> get values => _$successResponseStatusEnumValues;
  static SuccessResponseStatusEnum valueOf(String name) => _$successResponseStatusEnumValueOf(name);
}

