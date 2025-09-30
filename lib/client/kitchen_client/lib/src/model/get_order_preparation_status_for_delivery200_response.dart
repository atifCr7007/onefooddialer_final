//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kitchen_client/src/model/get_order_preparation_status_for_delivery200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_order_preparation_status_for_delivery200_response.g.dart';

/// GetOrderPreparationStatusForDelivery200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetOrderPreparationStatusForDelivery200Response implements Built<GetOrderPreparationStatusForDelivery200Response, GetOrderPreparationStatusForDelivery200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  GetOrderPreparationStatusForDelivery200ResponseData? get data;

  GetOrderPreparationStatusForDelivery200Response._();

  factory GetOrderPreparationStatusForDelivery200Response([void updates(GetOrderPreparationStatusForDelivery200ResponseBuilder b)]) = _$GetOrderPreparationStatusForDelivery200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOrderPreparationStatusForDelivery200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOrderPreparationStatusForDelivery200Response> get serializer => _$GetOrderPreparationStatusForDelivery200ResponseSerializer();
}

class _$GetOrderPreparationStatusForDelivery200ResponseSerializer implements PrimitiveSerializer<GetOrderPreparationStatusForDelivery200Response> {
  @override
  final Iterable<Type> types = const [GetOrderPreparationStatusForDelivery200Response, _$GetOrderPreparationStatusForDelivery200Response];

  @override
  final String wireName = r'GetOrderPreparationStatusForDelivery200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOrderPreparationStatusForDelivery200Response object, {
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
        specifiedType: const FullType(GetOrderPreparationStatusForDelivery200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOrderPreparationStatusForDelivery200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOrderPreparationStatusForDelivery200ResponseBuilder result,
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
            specifiedType: const FullType(GetOrderPreparationStatusForDelivery200ResponseData),
          ) as GetOrderPreparationStatusForDelivery200ResponseData;
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
  GetOrderPreparationStatusForDelivery200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrderPreparationStatusForDelivery200ResponseBuilder();
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

