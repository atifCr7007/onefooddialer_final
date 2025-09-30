//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kitchen_client/src/model/estimate_delivery_time200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'estimate_delivery_time200_response.g.dart';

/// EstimateDeliveryTime200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class EstimateDeliveryTime200Response implements Built<EstimateDeliveryTime200Response, EstimateDeliveryTime200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  EstimateDeliveryTime200ResponseData? get data;

  EstimateDeliveryTime200Response._();

  factory EstimateDeliveryTime200Response([void updates(EstimateDeliveryTime200ResponseBuilder b)]) = _$EstimateDeliveryTime200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EstimateDeliveryTime200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EstimateDeliveryTime200Response> get serializer => _$EstimateDeliveryTime200ResponseSerializer();
}

class _$EstimateDeliveryTime200ResponseSerializer implements PrimitiveSerializer<EstimateDeliveryTime200Response> {
  @override
  final Iterable<Type> types = const [EstimateDeliveryTime200Response, _$EstimateDeliveryTime200Response];

  @override
  final String wireName = r'EstimateDeliveryTime200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EstimateDeliveryTime200Response object, {
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
        specifiedType: const FullType(EstimateDeliveryTime200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EstimateDeliveryTime200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EstimateDeliveryTime200ResponseBuilder result,
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
            specifiedType: const FullType(EstimateDeliveryTime200ResponseData),
          ) as EstimateDeliveryTime200ResponseData;
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
  EstimateDeliveryTime200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EstimateDeliveryTime200ResponseBuilder();
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

