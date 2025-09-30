//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kitchen_client/src/model/kitchen_master.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_kitchen_masters200_response.g.dart';

/// GetKitchenMasters200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class GetKitchenMasters200Response implements Built<GetKitchenMasters200Response, GetKitchenMasters200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<KitchenMaster>? get data;

  GetKitchenMasters200Response._();

  factory GetKitchenMasters200Response([void updates(GetKitchenMasters200ResponseBuilder b)]) = _$GetKitchenMasters200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetKitchenMasters200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetKitchenMasters200Response> get serializer => _$GetKitchenMasters200ResponseSerializer();
}

class _$GetKitchenMasters200ResponseSerializer implements PrimitiveSerializer<GetKitchenMasters200Response> {
  @override
  final Iterable<Type> types = const [GetKitchenMasters200Response, _$GetKitchenMasters200Response];

  @override
  final String wireName = r'GetKitchenMasters200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetKitchenMasters200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(KitchenMaster)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetKitchenMasters200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetKitchenMasters200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(KitchenMaster)]),
          ) as BuiltList<KitchenMaster>;
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
  GetKitchenMasters200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetKitchenMasters200ResponseBuilder();
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

