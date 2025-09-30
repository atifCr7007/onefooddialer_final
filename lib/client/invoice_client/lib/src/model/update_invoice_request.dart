//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_invoice_request.g.dart';

/// UpdateInvoiceRequest
///
/// Properties:
/// * [status] 
/// * [customerName] 
/// * [customerEmail] 
/// * [customerPhone] 
/// * [billingAddress] 
/// * [shippingAddress] 
/// * [dueDate] 
/// * [notes] 
/// * [metadata] 
@BuiltValue()
abstract class UpdateInvoiceRequest implements Built<UpdateInvoiceRequest, UpdateInvoiceRequestBuilder> {
  @BuiltValueField(wireName: r'status')
  UpdateInvoiceRequestStatusEnum? get status;
  // enum statusEnum {  draft,  sent,  paid,  overdue,  cancelled,  };

  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: r'customer_email')
  String? get customerEmail;

  @BuiltValueField(wireName: r'customer_phone')
  String? get customerPhone;

  @BuiltValueField(wireName: r'billing_address')
  Address? get billingAddress;

  @BuiltValueField(wireName: r'shipping_address')
  Address? get shippingAddress;

  @BuiltValueField(wireName: r'due_date')
  Date? get dueDate;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  UpdateInvoiceRequest._();

  factory UpdateInvoiceRequest([void updates(UpdateInvoiceRequestBuilder b)]) = _$UpdateInvoiceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateInvoiceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateInvoiceRequest> get serializer => _$UpdateInvoiceRequestSerializer();
}

class _$UpdateInvoiceRequestSerializer implements PrimitiveSerializer<UpdateInvoiceRequest> {
  @override
  final Iterable<Type> types = const [UpdateInvoiceRequest, _$UpdateInvoiceRequest];

  @override
  final String wireName = r'UpdateInvoiceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateInvoiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UpdateInvoiceRequestStatusEnum),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerEmail != null) {
      yield r'customer_email';
      yield serializers.serialize(
        object.customerEmail,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.dueDate != null) {
      yield r'due_date';
      yield serializers.serialize(
        object.dueDate,
        specifiedType: const FullType(Date),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateInvoiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateInvoiceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateInvoiceRequestStatusEnum),
          ) as UpdateInvoiceRequestStatusEnum;
          result.status = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateInvoiceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateInvoiceRequestBuilder();
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

class UpdateInvoiceRequestStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'draft')
  static const UpdateInvoiceRequestStatusEnum draft = _$updateInvoiceRequestStatusEnum_draft;
  @BuiltValueEnumConst(wireName: r'sent')
  static const UpdateInvoiceRequestStatusEnum sent = _$updateInvoiceRequestStatusEnum_sent;
  @BuiltValueEnumConst(wireName: r'paid')
  static const UpdateInvoiceRequestStatusEnum paid = _$updateInvoiceRequestStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'overdue')
  static const UpdateInvoiceRequestStatusEnum overdue = _$updateInvoiceRequestStatusEnum_overdue;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const UpdateInvoiceRequestStatusEnum cancelled = _$updateInvoiceRequestStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const UpdateInvoiceRequestStatusEnum unknownDefaultOpenApi = _$updateInvoiceRequestStatusEnum_unknownDefaultOpenApi;

  static Serializer<UpdateInvoiceRequestStatusEnum> get serializer => _$updateInvoiceRequestStatusEnumSerializer;

  const UpdateInvoiceRequestStatusEnum._(String name): super(name);

  static BuiltSet<UpdateInvoiceRequestStatusEnum> get values => _$updateInvoiceRequestStatusEnumValues;
  static UpdateInvoiceRequestStatusEnum valueOf(String name) => _$updateInvoiceRequestStatusEnumValueOf(name);
}

