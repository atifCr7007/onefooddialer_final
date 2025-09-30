//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/subscription.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_all_subscriptions200_response.g.dart';

/// GetAllSubscriptions200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetAllSubscriptions200Response implements Built<GetAllSubscriptions200Response, GetAllSubscriptions200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<Subscription>? get data;

  GetAllSubscriptions200Response._();

  factory GetAllSubscriptions200Response([void updates(GetAllSubscriptions200ResponseBuilder b)]) = _$GetAllSubscriptions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAllSubscriptions200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAllSubscriptions200Response> get serializer => _$GetAllSubscriptions200ResponseSerializer();
}

class _$GetAllSubscriptions200ResponseSerializer implements PrimitiveSerializer<GetAllSubscriptions200Response> {
  @override
  final Iterable<Type> types = const [GetAllSubscriptions200Response, _$GetAllSubscriptions200Response];

  @override
  final String wireName = r'GetAllSubscriptions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAllSubscriptions200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Subscription)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAllSubscriptions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAllSubscriptions200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Subscription)]),
          ) as BuiltList<Subscription>;
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
  GetAllSubscriptions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAllSubscriptions200ResponseBuilder();
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

