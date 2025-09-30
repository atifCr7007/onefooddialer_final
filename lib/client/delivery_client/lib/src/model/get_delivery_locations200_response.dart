//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/delivery_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_delivery_locations200_response.g.dart';

/// GetDeliveryLocations200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class GetDeliveryLocations200Response implements Built<GetDeliveryLocations200Response, GetDeliveryLocations200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<DeliveryLocation>? get data;

  GetDeliveryLocations200Response._();

  factory GetDeliveryLocations200Response([void updates(GetDeliveryLocations200ResponseBuilder b)]) = _$GetDeliveryLocations200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDeliveryLocations200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDeliveryLocations200Response> get serializer => _$GetDeliveryLocations200ResponseSerializer();
}

class _$GetDeliveryLocations200ResponseSerializer implements PrimitiveSerializer<GetDeliveryLocations200Response> {
  @override
  final Iterable<Type> types = const [GetDeliveryLocations200Response, _$GetDeliveryLocations200Response];

  @override
  final String wireName = r'GetDeliveryLocations200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDeliveryLocations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(DeliveryLocation)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDeliveryLocations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDeliveryLocations200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DeliveryLocation)]),
          ) as BuiltList<DeliveryLocation>;
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
  GetDeliveryLocations200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeliveryLocations200ResponseBuilder();
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

