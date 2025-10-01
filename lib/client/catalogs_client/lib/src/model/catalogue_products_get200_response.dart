//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:catalogs_client/src/model/pagination_meta.dart';
import 'package:built_collection/built_collection.dart';
import 'package:catalogs_client/src/model/product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'catalogue_products_get200_response.g.dart';

/// CatalogueProductsGet200Response
///
/// Properties:
/// * [data] 
/// * [meta] 
@BuiltValue()
abstract class CatalogueProductsGet200Response implements Built<CatalogueProductsGet200Response, CatalogueProductsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Product>? get data;

  @BuiltValueField(wireName: r'meta')
  PaginationMeta? get meta;

  CatalogueProductsGet200Response._();

  factory CatalogueProductsGet200Response([void updates(CatalogueProductsGet200ResponseBuilder b)]) = _$CatalogueProductsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CatalogueProductsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CatalogueProductsGet200Response> get serializer => _$CatalogueProductsGet200ResponseSerializer();
}

class _$CatalogueProductsGet200ResponseSerializer implements PrimitiveSerializer<CatalogueProductsGet200Response> {
  @override
  final Iterable<Type> types = const [CatalogueProductsGet200Response, _$CatalogueProductsGet200Response];

  @override
  final String wireName = r'CatalogueProductsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CatalogueProductsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Product)]),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(PaginationMeta),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CatalogueProductsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CatalogueProductsGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Product)]),
          ) as BuiltList<Product>;
          result.data.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaginationMeta),
          ) as PaginationMeta;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CatalogueProductsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CatalogueProductsGet200ResponseBuilder();
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

