//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/kitchen_preparation_resource.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_preparation_status200_response.g.dart';

/// GetPreparationStatus200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetPreparationStatus200Response implements Built<GetPreparationStatus200Response, GetPreparationStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<KitchenPreparationResource>? get data;

  GetPreparationStatus200Response._();

  factory GetPreparationStatus200Response([void updates(GetPreparationStatus200ResponseBuilder b)]) = _$GetPreparationStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPreparationStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPreparationStatus200Response> get serializer => _$GetPreparationStatus200ResponseSerializer();
}

class _$GetPreparationStatus200ResponseSerializer implements PrimitiveSerializer<GetPreparationStatus200Response> {
  @override
  final Iterable<Type> types = const [GetPreparationStatus200Response, _$GetPreparationStatus200Response];

  @override
  final String wireName = r'GetPreparationStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPreparationStatus200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(KitchenPreparationResource)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetPreparationStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetPreparationStatus200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(KitchenPreparationResource)]),
          ) as BuiltList<KitchenPreparationResource>;
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
  GetPreparationStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPreparationStatus200ResponseBuilder();
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

