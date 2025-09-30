//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/get_food_dashboard200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_food_dashboard200_response.g.dart';

/// GetFoodDashboard200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetFoodDashboard200Response implements Built<GetFoodDashboard200Response, GetFoodDashboard200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  GetFoodDashboard200ResponseData? get data;

  GetFoodDashboard200Response._();

  factory GetFoodDashboard200Response([void updates(GetFoodDashboard200ResponseBuilder b)]) = _$GetFoodDashboard200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFoodDashboard200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFoodDashboard200Response> get serializer => _$GetFoodDashboard200ResponseSerializer();
}

class _$GetFoodDashboard200ResponseSerializer implements PrimitiveSerializer<GetFoodDashboard200Response> {
  @override
  final Iterable<Type> types = const [GetFoodDashboard200Response, _$GetFoodDashboard200Response];

  @override
  final String wireName = r'GetFoodDashboard200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFoodDashboard200Response object, {
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
        specifiedType: const FullType(GetFoodDashboard200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFoodDashboard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetFoodDashboard200ResponseBuilder result,
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
            specifiedType: const FullType(GetFoodDashboard200ResponseData),
          ) as GetFoodDashboard200ResponseData;
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
  GetFoodDashboard200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFoodDashboard200ResponseBuilder();
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

