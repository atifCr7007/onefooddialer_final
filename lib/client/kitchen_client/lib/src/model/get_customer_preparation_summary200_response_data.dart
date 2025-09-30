//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_customer_preparation_summary200_response_data_orders_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customer_preparation_summary200_response_data.g.dart';

/// GetCustomerPreparationSummary200ResponseData
///
/// Properties:
/// * [customerId] 
/// * [date] 
/// * [menu] 
/// * [totalOrders] 
/// * [preparedOrders] 
/// * [preparationPercentage] 
/// * [orders] 
@BuiltValue()
abstract class GetCustomerPreparationSummary200ResponseData implements Built<GetCustomerPreparationSummary200ResponseData, GetCustomerPreparationSummary200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'customer_id')
  String? get customerId;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'menu')
  String? get menu;

  @BuiltValueField(wireName: r'total_orders')
  int? get totalOrders;

  @BuiltValueField(wireName: r'prepared_orders')
  int? get preparedOrders;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  @BuiltValueField(wireName: r'orders')
  BuiltList<GetCustomerPreparationSummary200ResponseDataOrdersInner>? get orders;

  GetCustomerPreparationSummary200ResponseData._();

  factory GetCustomerPreparationSummary200ResponseData([void updates(GetCustomerPreparationSummary200ResponseDataBuilder b)]) = _$GetCustomerPreparationSummary200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomerPreparationSummary200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomerPreparationSummary200ResponseData> get serializer => _$GetCustomerPreparationSummary200ResponseDataSerializer();
}

class _$GetCustomerPreparationSummary200ResponseDataSerializer implements PrimitiveSerializer<GetCustomerPreparationSummary200ResponseData> {
  @override
  final Iterable<Type> types = const [GetCustomerPreparationSummary200ResponseData, _$GetCustomerPreparationSummary200ResponseData];

  @override
  final String wireName = r'GetCustomerPreparationSummary200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomerPreparationSummary200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.menu != null) {
      yield r'menu';
      yield serializers.serialize(
        object.menu,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalOrders != null) {
      yield r'total_orders';
      yield serializers.serialize(
        object.totalOrders,
        specifiedType: const FullType(int),
      );
    }
    if (object.preparedOrders != null) {
      yield r'prepared_orders';
      yield serializers.serialize(
        object.preparedOrders,
        specifiedType: const FullType(int),
      );
    }
    if (object.preparationPercentage != null) {
      yield r'preparation_percentage';
      yield serializers.serialize(
        object.preparationPercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.orders != null) {
      yield r'orders';
      yield serializers.serialize(
        object.orders,
        specifiedType: const FullType(BuiltList, [FullType(GetCustomerPreparationSummary200ResponseDataOrdersInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomerPreparationSummary200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomerPreparationSummary200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.menu = valueDes;
          break;
        case r'total_orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalOrders = valueDes;
          break;
        case r'prepared_orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.preparedOrders = valueDes;
          break;
        case r'preparation_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.preparationPercentage = valueDes;
          break;
        case r'orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCustomerPreparationSummary200ResponseDataOrdersInner)]),
          ) as BuiltList<GetCustomerPreparationSummary200ResponseDataOrdersInner>;
          result.orders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCustomerPreparationSummary200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomerPreparationSummary200ResponseDataBuilder();
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

