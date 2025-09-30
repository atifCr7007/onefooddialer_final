//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/meal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_meal201_response.g.dart';

/// CreateMeal201Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CreateMeal201Response implements Built<CreateMeal201Response, CreateMeal201ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Meal? get data;

  CreateMeal201Response._();

  factory CreateMeal201Response([void updates(CreateMeal201ResponseBuilder b)]) = _$CreateMeal201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateMeal201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateMeal201Response> get serializer => _$CreateMeal201ResponseSerializer();
}

class _$CreateMeal201ResponseSerializer implements PrimitiveSerializer<CreateMeal201Response> {
  @override
  final Iterable<Type> types = const [CreateMeal201Response, _$CreateMeal201Response];

  @override
  final String wireName = r'CreateMeal201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateMeal201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Meal),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateMeal201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateMeal201ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Meal),
          ) as Meal;
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
  CreateMeal201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateMeal201ResponseBuilder();
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

