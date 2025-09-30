//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_order_by_id200_response.g.dart';

/// GetOrderById200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class GetOrderById200Response implements Built<GetOrderById200Response, GetOrderById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Order? get data;

  GetOrderById200Response._();

  factory GetOrderById200Response([void updates(GetOrderById200ResponseBuilder b)]) = _$GetOrderById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOrderById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOrderById200Response> get serializer => _$GetOrderById200ResponseSerializer();
}

class _$GetOrderById200ResponseSerializer implements PrimitiveSerializer<GetOrderById200Response> {
  @override
  final Iterable<Type> types = const [GetOrderById200Response, _$GetOrderById200Response];

  @override
  final String wireName = r'GetOrderById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOrderById200Response object, {
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
        specifiedType: const FullType(Order),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOrderById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOrderById200ResponseBuilder result,
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
            specifiedType: const FullType(Order),
          ) as Order;
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
  GetOrderById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrderById200ResponseBuilder();
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

