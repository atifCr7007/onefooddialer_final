//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_backorder_from_order_request.g.dart';

/// CreateBackorderFromOrderRequest
///
/// Properties:
/// * [orderId] 
/// * [reason] 
@BuiltValue()
abstract class CreateBackorderFromOrderRequest implements Built<CreateBackorderFromOrderRequest, CreateBackorderFromOrderRequestBuilder> {
  @BuiltValueField(wireName: r'order_id')
  int get orderId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  CreateBackorderFromOrderRequest._();

  factory CreateBackorderFromOrderRequest([void updates(CreateBackorderFromOrderRequestBuilder b)]) = _$CreateBackorderFromOrderRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBackorderFromOrderRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBackorderFromOrderRequest> get serializer => _$CreateBackorderFromOrderRequestSerializer();
}

class _$CreateBackorderFromOrderRequestSerializer implements PrimitiveSerializer<CreateBackorderFromOrderRequest> {
  @override
  final Iterable<Type> types = const [CreateBackorderFromOrderRequest, _$CreateBackorderFromOrderRequest];

  @override
  final String wireName = r'CreateBackorderFromOrderRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBackorderFromOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_id';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(int),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBackorderFromOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBackorderFromOrderRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderId = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateBackorderFromOrderRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBackorderFromOrderRequestBuilder();
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

