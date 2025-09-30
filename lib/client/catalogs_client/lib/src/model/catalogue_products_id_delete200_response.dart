//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'catalogue_products_id_delete200_response.g.dart';

/// CatalogueProductsIdDelete200Response
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class CatalogueProductsIdDelete200Response implements Built<CatalogueProductsIdDelete200Response, CatalogueProductsIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  CatalogueProductsIdDelete200Response._();

  factory CatalogueProductsIdDelete200Response([void updates(CatalogueProductsIdDelete200ResponseBuilder b)]) = _$CatalogueProductsIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CatalogueProductsIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CatalogueProductsIdDelete200Response> get serializer => _$CatalogueProductsIdDelete200ResponseSerializer();
}

class _$CatalogueProductsIdDelete200ResponseSerializer implements PrimitiveSerializer<CatalogueProductsIdDelete200Response> {
  @override
  final Iterable<Type> types = const [CatalogueProductsIdDelete200Response, _$CatalogueProductsIdDelete200Response];

  @override
  final String wireName = r'CatalogueProductsIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CatalogueProductsIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    CatalogueProductsIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CatalogueProductsIdDelete200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  CatalogueProductsIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CatalogueProductsIdDelete200ResponseBuilder();
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

