//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'catalogue_products_id_put200_response.g.dart';

/// CatalogueProductsIdPut200Response
///
/// Properties:
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CatalogueProductsIdPut200Response implements Built<CatalogueProductsIdPut200Response, CatalogueProductsIdPut200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Product? get data;

  CatalogueProductsIdPut200Response._();

  factory CatalogueProductsIdPut200Response([void updates(CatalogueProductsIdPut200ResponseBuilder b)]) = _$CatalogueProductsIdPut200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CatalogueProductsIdPut200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CatalogueProductsIdPut200Response> get serializer => _$CatalogueProductsIdPut200ResponseSerializer();
}

class _$CatalogueProductsIdPut200ResponseSerializer implements PrimitiveSerializer<CatalogueProductsIdPut200Response> {
  @override
  final Iterable<Type> types = const [CatalogueProductsIdPut200Response, _$CatalogueProductsIdPut200Response];

  @override
  final String wireName = r'CatalogueProductsIdPut200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CatalogueProductsIdPut200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(Product),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CatalogueProductsIdPut200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CatalogueProductsIdPut200ResponseBuilder result,
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
  CatalogueProductsIdPut200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CatalogueProductsIdPut200ResponseBuilder();
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

