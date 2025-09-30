//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/book_third_party_delivery200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_third_party_delivery200_response.g.dart';

/// BookThirdPartyDelivery200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class BookThirdPartyDelivery200Response implements Built<BookThirdPartyDelivery200Response, BookThirdPartyDelivery200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  BookThirdPartyDelivery200ResponseData? get data;

  BookThirdPartyDelivery200Response._();

  factory BookThirdPartyDelivery200Response([void updates(BookThirdPartyDelivery200ResponseBuilder b)]) = _$BookThirdPartyDelivery200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookThirdPartyDelivery200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookThirdPartyDelivery200Response> get serializer => _$BookThirdPartyDelivery200ResponseSerializer();
}

class _$BookThirdPartyDelivery200ResponseSerializer implements PrimitiveSerializer<BookThirdPartyDelivery200Response> {
  @override
  final Iterable<Type> types = const [BookThirdPartyDelivery200Response, _$BookThirdPartyDelivery200Response];

  @override
  final String wireName = r'BookThirdPartyDelivery200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookThirdPartyDelivery200Response object, {
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
        specifiedType: const FullType(BookThirdPartyDelivery200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookThirdPartyDelivery200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookThirdPartyDelivery200ResponseBuilder result,
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
            specifiedType: const FullType(BookThirdPartyDelivery200ResponseData),
          ) as BookThirdPartyDelivery200ResponseData;
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
  BookThirdPartyDelivery200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookThirdPartyDelivery200ResponseBuilder();
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

