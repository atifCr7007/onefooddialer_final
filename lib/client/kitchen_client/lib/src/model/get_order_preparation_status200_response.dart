//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_order_preparation_status200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_order_preparation_status200_response.g.dart';

/// GetOrderPreparationStatus200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetOrderPreparationStatus200Response implements Built<GetOrderPreparationStatus200Response, GetOrderPreparationStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  GetOrderPreparationStatus200ResponseData? get data;

  GetOrderPreparationStatus200Response._();

  factory GetOrderPreparationStatus200Response([void updates(GetOrderPreparationStatus200ResponseBuilder b)]) = _$GetOrderPreparationStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOrderPreparationStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOrderPreparationStatus200Response> get serializer => _$GetOrderPreparationStatus200ResponseSerializer();
}

class _$GetOrderPreparationStatus200ResponseSerializer implements PrimitiveSerializer<GetOrderPreparationStatus200Response> {
  @override
  final Iterable<Type> types = const [GetOrderPreparationStatus200Response, _$GetOrderPreparationStatus200Response];

  @override
  final String wireName = r'GetOrderPreparationStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOrderPreparationStatus200Response object, {
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
        specifiedType: const FullType(GetOrderPreparationStatus200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOrderPreparationStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOrderPreparationStatus200ResponseBuilder result,
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
            specifiedType: const FullType(GetOrderPreparationStatus200ResponseData),
          ) as GetOrderPreparationStatus200ResponseData;
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
  GetOrderPreparationStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrderPreparationStatus200ResponseBuilder();
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

