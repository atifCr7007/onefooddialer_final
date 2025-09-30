//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/invoice.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_post201_response.g.dart';

/// InvoicesPost201Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class InvoicesPost201Response implements Built<InvoicesPost201Response, InvoicesPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'data')
  Invoice get data;

  InvoicesPost201Response._();

  factory InvoicesPost201Response([void updates(InvoicesPost201ResponseBuilder b)]) = _$InvoicesPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesPost201Response> get serializer => _$InvoicesPost201ResponseSerializer();
}

class _$InvoicesPost201ResponseSerializer implements PrimitiveSerializer<InvoicesPost201Response> {
  @override
  final Iterable<Type> types = const [InvoicesPost201Response, _$InvoicesPost201Response];

  @override
  final String wireName = r'InvoicesPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(Invoice),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesPost201ResponseBuilder result,
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
            specifiedType: const FullType(Invoice),
          ) as Invoice;
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
  InvoicesPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesPost201ResponseBuilder();
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

