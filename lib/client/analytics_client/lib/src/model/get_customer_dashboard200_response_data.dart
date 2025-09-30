//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/customer_spending.dart';
import 'package:built_collection/built_collection.dart';
import 'package:analytics_client/src/model/loyal_customer.dart';
import 'package:analytics_client/src/model/customer_preference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customer_dashboard200_response_data.g.dart';

/// GetCustomerDashboard200ResponseData
///
/// Properties:
/// * [loyalCustomers] 
/// * [customerPreferences] 
/// * [customerSpending] 
@BuiltValue()
abstract class GetCustomerDashboard200ResponseData implements Built<GetCustomerDashboard200ResponseData, GetCustomerDashboard200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'loyal_customers')
  BuiltList<LoyalCustomer>? get loyalCustomers;

  @BuiltValueField(wireName: r'customer_preferences')
  BuiltList<CustomerPreference>? get customerPreferences;

  @BuiltValueField(wireName: r'customer_spending')
  BuiltList<CustomerSpending>? get customerSpending;

  GetCustomerDashboard200ResponseData._();

  factory GetCustomerDashboard200ResponseData([void updates(GetCustomerDashboard200ResponseDataBuilder b)]) = _$GetCustomerDashboard200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomerDashboard200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomerDashboard200ResponseData> get serializer => _$GetCustomerDashboard200ResponseDataSerializer();
}

class _$GetCustomerDashboard200ResponseDataSerializer implements PrimitiveSerializer<GetCustomerDashboard200ResponseData> {
  @override
  final Iterable<Type> types = const [GetCustomerDashboard200ResponseData, _$GetCustomerDashboard200ResponseData];

  @override
  final String wireName = r'GetCustomerDashboard200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomerDashboard200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.loyalCustomers != null) {
      yield r'loyal_customers';
      yield serializers.serialize(
        object.loyalCustomers,
        specifiedType: const FullType(BuiltList, [FullType(LoyalCustomer)]),
      );
    }
    if (object.customerPreferences != null) {
      yield r'customer_preferences';
      yield serializers.serialize(
        object.customerPreferences,
        specifiedType: const FullType(BuiltList, [FullType(CustomerPreference)]),
      );
    }
    if (object.customerSpending != null) {
      yield r'customer_spending';
      yield serializers.serialize(
        object.customerSpending,
        specifiedType: const FullType(BuiltList, [FullType(CustomerSpending)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomerDashboard200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomerDashboard200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'loyal_customers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LoyalCustomer)]),
          ) as BuiltList<LoyalCustomer>;
          result.loyalCustomers.replace(valueDes);
          break;
        case r'customer_preferences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerPreference)]),
          ) as BuiltList<CustomerPreference>;
          result.customerPreferences.replace(valueDes);
          break;
        case r'customer_spending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerSpending)]),
          ) as BuiltList<CustomerSpending>;
          result.customerSpending.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCustomerDashboard200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomerDashboard200ResponseDataBuilder();
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

