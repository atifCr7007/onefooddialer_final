//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_preparation_summary200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_preparation_summary200_response.g.dart';

/// GetPreparationSummary200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetPreparationSummary200Response implements Built<GetPreparationSummary200Response, GetPreparationSummary200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  GetPreparationSummary200ResponseData? get data;

  GetPreparationSummary200Response._();

  factory GetPreparationSummary200Response([void updates(GetPreparationSummary200ResponseBuilder b)]) = _$GetPreparationSummary200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPreparationSummary200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPreparationSummary200Response> get serializer => _$GetPreparationSummary200ResponseSerializer();
}

class _$GetPreparationSummary200ResponseSerializer implements PrimitiveSerializer<GetPreparationSummary200Response> {
  @override
  final Iterable<Type> types = const [GetPreparationSummary200Response, _$GetPreparationSummary200Response];

  @override
  final String wireName = r'GetPreparationSummary200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPreparationSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(GetPreparationSummary200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetPreparationSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetPreparationSummary200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetPreparationSummary200ResponseData),
          ) as GetPreparationSummary200ResponseData;
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
  GetPreparationSummary200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPreparationSummary200ResponseBuilder();
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

