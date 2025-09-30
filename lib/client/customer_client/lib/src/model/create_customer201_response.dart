//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:customer_client/src/model/customer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_customer201_response.g.dart';

/// CreateCustomer201Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CreateCustomer201Response implements Built<CreateCustomer201Response, CreateCustomer201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Customer? get data;

  CreateCustomer201Response._();

  factory CreateCustomer201Response([void updates(CreateCustomer201ResponseBuilder b)]) = _$CreateCustomer201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCustomer201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCustomer201Response> get serializer => _$CreateCustomer201ResponseSerializer();
}

class _$CreateCustomer201ResponseSerializer implements PrimitiveSerializer<CreateCustomer201Response> {
  @override
  final Iterable<Type> types = const [CreateCustomer201Response, _$CreateCustomer201Response];

  @override
  final String wireName = r'CreateCustomer201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCustomer201Response object, {
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
        specifiedType: const FullType(Customer),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCustomer201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCustomer201ResponseBuilder result,
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
            specifiedType: const FullType(Customer),
          ) as Customer;
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
  CreateCustomer201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCustomer201ResponseBuilder();
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

