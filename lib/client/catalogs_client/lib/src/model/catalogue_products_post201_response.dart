//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:catalogs_client/src/model/product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'catalogue_products_post201_response.g.dart';

/// CatalogueProductsPost201Response
///
/// Properties:
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CatalogueProductsPost201Response implements Built<CatalogueProductsPost201Response, CatalogueProductsPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Product? get data;

  CatalogueProductsPost201Response._();

  factory CatalogueProductsPost201Response([void updates(CatalogueProductsPost201ResponseBuilder b)]) = _$CatalogueProductsPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CatalogueProductsPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CatalogueProductsPost201Response> get serializer => _$CatalogueProductsPost201ResponseSerializer();
}

class _$CatalogueProductsPost201ResponseSerializer implements PrimitiveSerializer<CatalogueProductsPost201Response> {
  @override
  final Iterable<Type> types = const [CatalogueProductsPost201Response, _$CatalogueProductsPost201Response];

  @override
  final String wireName = r'CatalogueProductsPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CatalogueProductsPost201Response object, {
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
    CatalogueProductsPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CatalogueProductsPost201ResponseBuilder result,
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
  CatalogueProductsPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CatalogueProductsPost201ResponseBuilder();
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

