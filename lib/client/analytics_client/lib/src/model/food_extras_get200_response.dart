//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/common_extra.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'food_extras_get200_response.g.dart';

/// FoodExtrasGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class FoodExtrasGet200Response implements Built<FoodExtrasGet200Response, FoodExtrasGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<CommonExtra>? get data;

  FoodExtrasGet200Response._();

  factory FoodExtrasGet200Response([void updates(FoodExtrasGet200ResponseBuilder b)]) = _$FoodExtrasGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoodExtrasGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoodExtrasGet200Response> get serializer => _$FoodExtrasGet200ResponseSerializer();
}

class _$FoodExtrasGet200ResponseSerializer implements PrimitiveSerializer<FoodExtrasGet200Response> {
  @override
  final Iterable<Type> types = const [FoodExtrasGet200Response, _$FoodExtrasGet200Response];

  @override
  final String wireName = r'FoodExtrasGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoodExtrasGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(CommonExtra)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoodExtrasGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FoodExtrasGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CommonExtra)]),
          ) as BuiltList<CommonExtra>;
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
  FoodExtrasGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoodExtrasGet200ResponseBuilder();
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

