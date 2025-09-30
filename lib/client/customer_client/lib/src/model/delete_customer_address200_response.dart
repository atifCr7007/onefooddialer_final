//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_customer_address200_response.g.dart';

/// DeleteCustomerAddress200Response
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class DeleteCustomerAddress200Response implements Built<DeleteCustomerAddress200Response, DeleteCustomerAddress200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  DeleteCustomerAddress200Response._();

  factory DeleteCustomerAddress200Response([void updates(DeleteCustomerAddress200ResponseBuilder b)]) = _$DeleteCustomerAddress200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteCustomerAddress200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteCustomerAddress200Response> get serializer => _$DeleteCustomerAddress200ResponseSerializer();
}

class _$DeleteCustomerAddress200ResponseSerializer implements PrimitiveSerializer<DeleteCustomerAddress200Response> {
  @override
  final Iterable<Type> types = const [DeleteCustomerAddress200Response, _$DeleteCustomerAddress200Response];

  @override
  final String wireName = r'DeleteCustomerAddress200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteCustomerAddress200Response object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteCustomerAddress200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteCustomerAddress200ResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteCustomerAddress200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCustomerAddress200ResponseBuilder();
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

