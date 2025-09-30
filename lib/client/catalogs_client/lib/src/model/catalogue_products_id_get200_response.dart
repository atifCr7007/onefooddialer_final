//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'catalogue_products_id_get200_response.g.dart';

/// CatalogueProductsIdGet200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class CatalogueProductsIdGet200Response implements Built<CatalogueProductsIdGet200Response, CatalogueProductsIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  Product? get data;

  CatalogueProductsIdGet200Response._();

  factory CatalogueProductsIdGet200Response([void updates(CatalogueProductsIdGet200ResponseBuilder b)]) = _$CatalogueProductsIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CatalogueProductsIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CatalogueProductsIdGet200Response> get serializer => _$CatalogueProductsIdGet200ResponseSerializer();
}

class _$CatalogueProductsIdGet200ResponseSerializer implements PrimitiveSerializer<CatalogueProductsIdGet200Response> {
  @override
  final Iterable<Type> types = const [CatalogueProductsIdGet200Response, _$CatalogueProductsIdGet200Response];

  @override
  final String wireName = r'CatalogueProductsIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CatalogueProductsIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Product),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CatalogueProductsIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CatalogueProductsIdGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Product),
          ) as Product;
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
  CatalogueProductsIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CatalogueProductsIdGet200ResponseBuilder();
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

