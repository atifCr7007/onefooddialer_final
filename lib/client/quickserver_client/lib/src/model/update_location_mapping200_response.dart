//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/location_mapping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_location_mapping200_response.g.dart';

/// UpdateLocationMapping200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class UpdateLocationMapping200Response implements Built<UpdateLocationMapping200Response, UpdateLocationMapping200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  LocationMapping? get data;

  UpdateLocationMapping200Response._();

  factory UpdateLocationMapping200Response([void updates(UpdateLocationMapping200ResponseBuilder b)]) = _$UpdateLocationMapping200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateLocationMapping200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateLocationMapping200Response> get serializer => _$UpdateLocationMapping200ResponseSerializer();
}

class _$UpdateLocationMapping200ResponseSerializer implements PrimitiveSerializer<UpdateLocationMapping200Response> {
  @override
  final Iterable<Type> types = const [UpdateLocationMapping200Response, _$UpdateLocationMapping200Response];

  @override
  final String wireName = r'UpdateLocationMapping200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateLocationMapping200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
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
        specifiedType: const FullType(LocationMapping),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateLocationMapping200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateLocationMapping200ResponseBuilder result,
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
            specifiedType: const FullType(LocationMapping),
          ) as LocationMapping;
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
  UpdateLocationMapping200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateLocationMapping200ResponseBuilder();
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

