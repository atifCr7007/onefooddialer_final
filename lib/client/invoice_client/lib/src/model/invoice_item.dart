//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoice_item.g.dart';

/// InvoiceItem
///
/// Properties:
/// * [id] 
/// * [invoiceId] 
/// * [productId] 
/// * [description] 
/// * [quantity] 
/// * [unitPrice] 
/// * [taxRate] 
/// * [discountAmount] 
/// * [totalPrice] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class InvoiceItem implements Built<InvoiceItem, InvoiceItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'invoice_id')
  int get invoiceId;

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

  @BuiltValueField(wireName: r'total_price')
  double get totalPrice;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  InvoiceItem._();

  factory InvoiceItem([void updates(InvoiceItemBuilder b)]) = _$InvoiceItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoiceItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoiceItem> get serializer => _$InvoiceItemSerializer();
}

class _$InvoiceItemSerializer implements PrimitiveSerializer<InvoiceItem> {
  @override
  final Iterable<Type> types = const [InvoiceItem, _$InvoiceItem];

  @override
  final String wireName = r'InvoiceItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoiceItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'invoice_id';
    yield serializers.serialize(
      object.invoiceId,
      specifiedType: const FullType(int),
    );
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
    yield r'total_price';
    yield serializers.serialize(
      object.totalPrice,
      specifiedType: const FullType(double),
    );
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoiceItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoiceItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'invoice_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.invoiceId = valueDes;
          break;
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
        case r'total_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalPrice = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvoiceItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoiceItemBuilder();
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

