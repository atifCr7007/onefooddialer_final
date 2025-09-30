//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/invoice_item.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoice.g.dart';

/// Invoice
///
/// Properties:
/// * [id] 
/// * [invoiceNumber] 
/// * [customerId] 
/// * [orderId] 
/// * [subscriptionId] 
/// * [customerName] 
/// * [customerEmail] 
/// * [customerPhone] 
/// * [billingAddress] 
/// * [shippingAddress] 
/// * [subtotal] 
/// * [taxAmount] 
/// * [discountAmount] 
/// * [totalAmount] 
/// * [currency] 
/// * [status] 
/// * [type] 
/// * [dueDate] 
/// * [paidAt] 
/// * [paymentMethod] 
/// * [paymentReference] 
/// * [notes] 
/// * [metadata] 
/// * [companyId] 
/// * [unitId] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [items] 
@BuiltValue()
abstract class Invoice implements Built<Invoice, InvoiceBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'invoice_number')
  String get invoiceNumber;

  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  @BuiltValueField(wireName: r'order_id')
  int? get orderId;

  @BuiltValueField(wireName: r'subscription_id')
  int? get subscriptionId;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'customer_email')
  String get customerEmail;

  @BuiltValueField(wireName: r'customer_phone')
  String? get customerPhone;

  @BuiltValueField(wireName: r'billing_address')
  Address? get billingAddress;

  @BuiltValueField(wireName: r'shipping_address')
  Address? get shippingAddress;

  @BuiltValueField(wireName: r'subtotal')
  double get subtotal;

  @BuiltValueField(wireName: r'tax_amount')
  double get taxAmount;

  @BuiltValueField(wireName: r'discount_amount')
  double get discountAmount;

  @BuiltValueField(wireName: r'total_amount')
  double get totalAmount;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'status')
  InvoiceStatusEnum get status;
  // enum statusEnum {  draft,  sent,  paid,  overdue,  cancelled,  };

  @BuiltValueField(wireName: r'type')
  InvoiceTypeEnum get type;
  // enum typeEnum {  order,  subscription,  refund,  adjustment,  };

  @BuiltValueField(wireName: r'due_date')
  Date get dueDate;

  @BuiltValueField(wireName: r'paid_at')
  DateTime? get paidAt;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'payment_reference')
  String? get paymentReference;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  @BuiltValueField(wireName: r'company_id')
  int get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'items')
  BuiltList<InvoiceItem>? get items;

  Invoice._();

  factory Invoice([void updates(InvoiceBuilder b)]) = _$Invoice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Invoice> get serializer => _$InvoiceSerializer();
}

class _$InvoiceSerializer implements PrimitiveSerializer<Invoice> {
  @override
  final Iterable<Type> types = const [Invoice, _$Invoice];

  @override
  final String wireName = r'Invoice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Invoice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'invoice_number';
    yield serializers.serialize(
      object.invoiceNumber,
      specifiedType: const FullType(String),
    );
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.subscriptionId != null) {
      yield r'subscription_id';
      yield serializers.serialize(
        object.subscriptionId,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'customer_email';
    yield serializers.serialize(
      object.customerEmail,
      specifiedType: const FullType(String),
    );
    if (object.customerPhone != null) {
      yield r'customer_phone';
      yield serializers.serialize(
        object.customerPhone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.billingAddress != null) {
      yield r'billing_address';
      yield serializers.serialize(
        object.billingAddress,
        specifiedType: const FullType(Address),
      );
    }
    if (object.shippingAddress != null) {
      yield r'shipping_address';
      yield serializers.serialize(
        object.shippingAddress,
        specifiedType: const FullType.nullable(Address),
      );
    }
    yield r'subtotal';
    yield serializers.serialize(
      object.subtotal,
      specifiedType: const FullType(double),
    );
    yield r'tax_amount';
    yield serializers.serialize(
      object.taxAmount,
      specifiedType: const FullType(double),
    );
    yield r'discount_amount';
    yield serializers.serialize(
      object.discountAmount,
      specifiedType: const FullType(double),
    );
    yield r'total_amount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(double),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(InvoiceStatusEnum),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(InvoiceTypeEnum),
    );
    yield r'due_date';
    yield serializers.serialize(
      object.dueDate,
      specifiedType: const FullType(Date),
    );
    if (object.paidAt != null) {
      yield r'paid_at';
      yield serializers.serialize(
        object.paidAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paymentReference != null) {
      yield r'payment_reference';
      yield serializers.serialize(
        object.paymentReference,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    yield r'company_id';
    yield serializers.serialize(
      object.companyId,
      specifiedType: const FullType(int),
    );
    if (object.unitId != null) {
      yield r'unit_id';
      yield serializers.serialize(
        object.unitId,
        specifiedType: const FullType.nullable(int),
      );
    }
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
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(InvoiceItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Invoice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoiceBuilder result,
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
        case r'invoice_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.invoiceNumber = valueDes;
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'subscription_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.subscriptionId = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'customer_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerEmail = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerPhone = valueDes;
          break;
        case r'billing_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Address),
          ) as Address;
          result.billingAddress.replace(valueDes);
          break;
        case r'shipping_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.shippingAddress.replace(valueDes);
          break;
        case r'subtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.subtotal = valueDes;
          break;
        case r'tax_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.taxAmount = valueDes;
          break;
        case r'discount_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountAmount = valueDes;
          break;
        case r'total_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAmount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvoiceStatusEnum),
          ) as InvoiceStatusEnum;
          result.status = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvoiceTypeEnum),
          ) as InvoiceTypeEnum;
          result.type = valueDes;
          break;
        case r'due_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.dueDate = valueDes;
          break;
        case r'paid_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.paidAt = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'payment_reference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentReference = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        case r'company_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.companyId = valueDes;
          break;
        case r'unit_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.unitId = valueDes;
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(InvoiceItem)]),
          ) as BuiltList<InvoiceItem>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Invoice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoiceBuilder();
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

class InvoiceStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'draft')
  static const InvoiceStatusEnum draft = _$invoiceStatusEnum_draft;
  @BuiltValueEnumConst(wireName: r'sent')
  static const InvoiceStatusEnum sent = _$invoiceStatusEnum_sent;
  @BuiltValueEnumConst(wireName: r'paid')
  static const InvoiceStatusEnum paid = _$invoiceStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'overdue')
  static const InvoiceStatusEnum overdue = _$invoiceStatusEnum_overdue;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const InvoiceStatusEnum cancelled = _$invoiceStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InvoiceStatusEnum unknownDefaultOpenApi = _$invoiceStatusEnum_unknownDefaultOpenApi;

  static Serializer<InvoiceStatusEnum> get serializer => _$invoiceStatusEnumSerializer;

  const InvoiceStatusEnum._(String name): super(name);

  static BuiltSet<InvoiceStatusEnum> get values => _$invoiceStatusEnumValues;
  static InvoiceStatusEnum valueOf(String name) => _$invoiceStatusEnumValueOf(name);
}

class InvoiceTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'order')
  static const InvoiceTypeEnum order = _$invoiceTypeEnum_order;
  @BuiltValueEnumConst(wireName: r'subscription')
  static const InvoiceTypeEnum subscription = _$invoiceTypeEnum_subscription;
  @BuiltValueEnumConst(wireName: r'refund')
  static const InvoiceTypeEnum refund = _$invoiceTypeEnum_refund;
  @BuiltValueEnumConst(wireName: r'adjustment')
  static const InvoiceTypeEnum adjustment = _$invoiceTypeEnum_adjustment;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InvoiceTypeEnum unknownDefaultOpenApi = _$invoiceTypeEnum_unknownDefaultOpenApi;

  static Serializer<InvoiceTypeEnum> get serializer => _$invoiceTypeEnumSerializer;

  const InvoiceTypeEnum._(String name): super(name);

  static BuiltSet<InvoiceTypeEnum> get values => _$invoiceTypeEnumValues;
  static InvoiceTypeEnum valueOf(String name) => _$invoiceTypeEnumValueOf(name);
}

