//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/create_invoice_item_request.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_invoice_request.g.dart';

/// CreateInvoiceRequest
///
/// Properties:
/// * [customerId] 
/// * [orderId] 
/// * [subscriptionId] 
/// * [customerName] 
/// * [customerEmail] 
/// * [customerPhone] 
/// * [billingAddress] 
/// * [shippingAddress] 
/// * [dueDate] 
/// * [currency] 
/// * [type] 
/// * [notes] 
/// * [metadata] 
/// * [companyId] 
/// * [unitId] 
/// * [items] 
@BuiltValue()
abstract class CreateInvoiceRequest implements Built<CreateInvoiceRequest, CreateInvoiceRequestBuilder> {
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
  Address get billingAddress;

  @BuiltValueField(wireName: r'shipping_address')
  Address? get shippingAddress;

  @BuiltValueField(wireName: r'due_date')
  Date get dueDate;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'type')
  CreateInvoiceRequestTypeEnum get type;
  // enum typeEnum {  order,  subscription,  refund,  adjustment,  };

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'items')
  BuiltList<CreateInvoiceItemRequest> get items;

  CreateInvoiceRequest._();

  factory CreateInvoiceRequest([void updates(CreateInvoiceRequestBuilder b)]) = _$CreateInvoiceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInvoiceRequestBuilder b) => b
      ..currency = 'INR';

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInvoiceRequest> get serializer => _$CreateInvoiceRequestSerializer();
}

class _$CreateInvoiceRequestSerializer implements PrimitiveSerializer<CreateInvoiceRequest> {
  @override
  final Iterable<Type> types = const [CreateInvoiceRequest, _$CreateInvoiceRequest];

  @override
  final String wireName = r'CreateInvoiceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInvoiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'billing_address';
    yield serializers.serialize(
      object.billingAddress,
      specifiedType: const FullType(Address),
    );
    if (object.shippingAddress != null) {
      yield r'shipping_address';
      yield serializers.serialize(
        object.shippingAddress,
        specifiedType: const FullType.nullable(Address),
      );
    }
    yield r'due_date';
    yield serializers.serialize(
      object.dueDate,
      specifiedType: const FullType(Date),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CreateInvoiceRequestTypeEnum),
    );
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
    if (object.companyId != null) {
      yield r'company_id';
      yield serializers.serialize(
        object.companyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitId != null) {
      yield r'unit_id';
      yield serializers.serialize(
        object.unitId,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CreateInvoiceItemRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateInvoiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateInvoiceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'due_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.dueDate = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateInvoiceRequestTypeEnum),
          ) as CreateInvoiceRequestTypeEnum;
          result.type = valueDes;
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateInvoiceItemRequest)]),
          ) as BuiltList<CreateInvoiceItemRequest>;
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
  CreateInvoiceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInvoiceRequestBuilder();
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

class CreateInvoiceRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'order')
  static const CreateInvoiceRequestTypeEnum order = _$createInvoiceRequestTypeEnum_order;
  @BuiltValueEnumConst(wireName: r'subscription')
  static const CreateInvoiceRequestTypeEnum subscription = _$createInvoiceRequestTypeEnum_subscription;
  @BuiltValueEnumConst(wireName: r'refund')
  static const CreateInvoiceRequestTypeEnum refund = _$createInvoiceRequestTypeEnum_refund;
  @BuiltValueEnumConst(wireName: r'adjustment')
  static const CreateInvoiceRequestTypeEnum adjustment = _$createInvoiceRequestTypeEnum_adjustment;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CreateInvoiceRequestTypeEnum unknownDefaultOpenApi = _$createInvoiceRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<CreateInvoiceRequestTypeEnum> get serializer => _$createInvoiceRequestTypeEnumSerializer;

  const CreateInvoiceRequestTypeEnum._(String name): super(name);

  static BuiltSet<CreateInvoiceRequestTypeEnum> get values => _$createInvoiceRequestTypeEnumValues;
  static CreateInvoiceRequestTypeEnum valueOf(String name) => _$createInvoiceRequestTypeEnumValueOf(name);
}

