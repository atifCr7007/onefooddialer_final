//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'catalogue_products_id_get404_response.g.dart';

/// CatalogueProductsIdGet404Response
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class CatalogueProductsIdGet404Response implements Built<CatalogueProductsIdGet404Response, CatalogueProductsIdGet404ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  CatalogueProductsIdGet404Response._();

  factory CatalogueProductsIdGet404Response([void updates(CatalogueProductsIdGet404ResponseBuilder b)]) = _$CatalogueProductsIdGet404Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CatalogueProductsIdGet404ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CatalogueProductsIdGet404Response> get serializer => _$CatalogueProductsIdGet404ResponseSerializer();
}

class _$CatalogueProductsIdGet404ResponseSerializer implements PrimitiveSerializer<CatalogueProductsIdGet404Response> {
  @override
  final Iterable<Type> types = const [CatalogueProductsIdGet404Response, _$CatalogueProductsIdGet404Response];

  @override
  final String wireName = r'CatalogueProductsIdGet404Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CatalogueProductsIdGet404Response object, {
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
    CatalogueProductsIdGet404Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CatalogueProductsIdGet404ResponseBuilder result,
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
  CatalogueProductsIdGet404Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CatalogueProductsIdGet404ResponseBuilder();
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

