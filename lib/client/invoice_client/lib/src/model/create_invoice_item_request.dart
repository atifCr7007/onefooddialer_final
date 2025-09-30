//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_invoice_item_request.g.dart';

/// CreateInvoiceItemRequest
///
/// Properties:
/// * [productId] 
/// * [description] 
/// * [quantity] 
/// * [unitPrice] 
/// * [taxRate] 
/// * [discountAmount] 
@BuiltValue()
abstract class CreateInvoiceItemRequest implements Built<CreateInvoiceItemRequest, CreateInvoiceItemRequestBuilder> {
  @BuiltValueField(wireName: r'product_id')
  int? get productId;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  @BuiltValueField(wireName: r'unit_price')
  double get unitPrice;

  @BuiltValueField(wireName: r'tax_rate')
  double? get taxRate;

  @BuiltValueField(wireName: r'discount_amount')
  double? get discountAmount;

  CreateInvoiceItemRequest._();

  factory CreateInvoiceItemRequest([void updates(CreateInvoiceItemRequestBuilder b)]) = _$CreateInvoiceItemRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInvoiceItemRequestBuilder b) => b
      ..taxRate = 0
      ..discountAmount = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInvoiceItemRequest> get serializer => _$CreateInvoiceItemRequestSerializer();
}

class _$CreateInvoiceItemRequestSerializer implements PrimitiveSerializer<CreateInvoiceItemRequest> {
  @override
  final Iterable<Type> types = const [CreateInvoiceItemRequest, _$CreateInvoiceItemRequest];

  @override
  final String wireName = r'CreateInvoiceItemRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInvoiceItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productId != null) {
      yield r'product_id';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    yield r'unit_price';
    yield serializers.serialize(
      object.unitPrice,
      specifiedType: const FullType(double),
    );
    if (object.taxRate != null) {
      yield r'tax_rate';
      yield serializers.serialize(
        object.taxRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.discountAmount != null) {
      yield r'discount_amount';
      yield serializers.serialize(
        object.discountAmount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateInvoiceItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateInvoiceItemRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'unit_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitPrice = valueDes;
          break;
        case r'tax_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.taxRate = valueDes;
          break;
        case r'discount_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateInvoiceItemRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInvoiceItemRequestBuilder();
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

