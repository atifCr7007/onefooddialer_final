//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/backorder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_backorder200_response.g.dart';

/// CancelBackorder200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CancelBackorder200Response implements Built<CancelBackorder200Response, CancelBackorder200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Backorder? get data;

  CancelBackorder200Response._();

  factory CancelBackorder200Response([void updates(CancelBackorder200ResponseBuilder b)]) = _$CancelBackorder200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CancelBackorder200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CancelBackorder200Response> get serializer => _$CancelBackorder200ResponseSerializer();
}

class _$CancelBackorder200ResponseSerializer implements PrimitiveSerializer<CancelBackorder200Response> {
  @override
  final Iterable<Type> types = const [CancelBackorder200Response, _$CancelBackorder200Response];

  @override
  final String wireName = r'CancelBackorder200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CancelBackorder200Response object, {
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
    CancelBackorder200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CancelBackorder200ResponseBuilder result,
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
  CancelBackorder200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelBackorder200ResponseBuilder();
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

