//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kitchen_client/src/model/get_multiple_orders_preparation_status200_response_data_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_multiple_orders_preparation_status200_response.g.dart';

/// GetMultipleOrdersPreparationStatus200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetMultipleOrdersPreparationStatus200Response implements Built<GetMultipleOrdersPreparationStatus200Response, GetMultipleOrdersPreparationStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, GetMultipleOrdersPreparationStatus200ResponseDataValue>? get data;

  GetMultipleOrdersPreparationStatus200Response._();

  factory GetMultipleOrdersPreparationStatus200Response([void updates(GetMultipleOrdersPreparationStatus200ResponseBuilder b)]) = _$GetMultipleOrdersPreparationStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMultipleOrdersPreparationStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMultipleOrdersPreparationStatus200Response> get serializer => _$GetMultipleOrdersPreparationStatus200ResponseSerializer();
}

class _$GetMultipleOrdersPreparationStatus200ResponseSerializer implements PrimitiveSerializer<GetMultipleOrdersPreparationStatus200Response> {
  @override
  final Iterable<Type> types = const [GetMultipleOrdersPreparationStatus200Response, _$GetMultipleOrdersPreparationStatus200Response];

  @override
  final String wireName = r'GetMultipleOrdersPreparationStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMultipleOrdersPreparationStatus200Response object, {
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
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(GetMultipleOrdersPreparationStatus200ResponseDataValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMultipleOrdersPreparationStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMultipleOrdersPreparationStatus200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(GetMultipleOrdersPreparationStatus200ResponseDataValue)]),
          ) as BuiltMap<String, GetMultipleOrdersPreparationStatus200ResponseDataValue>;
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
  GetMultipleOrdersPreparationStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMultipleOrdersPreparationStatus200ResponseBuilder();
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

