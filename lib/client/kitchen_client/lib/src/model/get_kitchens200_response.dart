//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:kitchen_client/src/model/kitchen.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_kitchens200_response.g.dart';

/// GetKitchens200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class GetKitchens200Response implements Built<GetKitchens200Response, GetKitchens200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Kitchen>? get data;

  GetKitchens200Response._();

  factory GetKitchens200Response([void updates(GetKitchens200ResponseBuilder b)]) = _$GetKitchens200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetKitchens200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetKitchens200Response> get serializer => _$GetKitchens200ResponseSerializer();
}

class _$GetKitchens200ResponseSerializer implements PrimitiveSerializer<GetKitchens200Response> {
  @override
  final Iterable<Type> types = const [GetKitchens200Response, _$GetKitchens200Response];

  @override
  final String wireName = r'GetKitchens200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetKitchens200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Kitchen)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetKitchens200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetKitchens200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Kitchen)]),
          ) as BuiltList<Kitchen>;
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
  GetKitchens200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetKitchens200ResponseBuilder();
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

