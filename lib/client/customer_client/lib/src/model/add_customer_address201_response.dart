//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:customer_client/src/model/address.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_customer_address201_response.g.dart';

/// AddCustomerAddress201Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class AddCustomerAddress201Response implements Built<AddCustomerAddress201Response, AddCustomerAddress201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Address? get data;

  AddCustomerAddress201Response._();

  factory AddCustomerAddress201Response([void updates(AddCustomerAddress201ResponseBuilder b)]) = _$AddCustomerAddress201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddCustomerAddress201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddCustomerAddress201Response> get serializer => _$AddCustomerAddress201ResponseSerializer();
}

class _$AddCustomerAddress201ResponseSerializer implements PrimitiveSerializer<AddCustomerAddress201Response> {
  @override
  final Iterable<Type> types = const [AddCustomerAddress201Response, _$AddCustomerAddress201Response];

  @override
  final String wireName = r'AddCustomerAddress201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddCustomerAddress201Response object, {
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
        specifiedType: const FullType(Address),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddCustomerAddress201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddCustomerAddress201ResponseBuilder result,
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
            specifiedType: const FullType(Address),
          ) as Address;
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
  AddCustomerAddress201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddCustomerAddress201ResponseBuilder();
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

