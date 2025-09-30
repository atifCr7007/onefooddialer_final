//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/backorder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_backorder_by_id200_response.g.dart';

/// GetBackorderById200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class GetBackorderById200Response implements Built<GetBackorderById200Response, GetBackorderById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Backorder? get data;

  GetBackorderById200Response._();

  factory GetBackorderById200Response([void updates(GetBackorderById200ResponseBuilder b)]) = _$GetBackorderById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetBackorderById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetBackorderById200Response> get serializer => _$GetBackorderById200ResponseSerializer();
}

class _$GetBackorderById200ResponseSerializer implements PrimitiveSerializer<GetBackorderById200Response> {
  @override
  final Iterable<Type> types = const [GetBackorderById200Response, _$GetBackorderById200Response];

  @override
  final String wireName = r'GetBackorderById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetBackorderById200Response object, {
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
        specifiedType: const FullType(Backorder),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetBackorderById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetBackorderById200ResponseBuilder result,
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
            specifiedType: const FullType(Backorder),
          ) as Backorder;
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
  GetBackorderById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBackorderById200ResponseBuilder();
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

