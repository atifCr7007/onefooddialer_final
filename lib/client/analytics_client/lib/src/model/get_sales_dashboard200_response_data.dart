//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/payment_mode.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sales_dashboard200_response_data.g.dart';

/// GetSalesDashboard200ResponseData
///
/// Properties:
/// * [years] 
/// * [months] 
/// * [paymentModes] 
@BuiltValue()
abstract class GetSalesDashboard200ResponseData implements Built<GetSalesDashboard200ResponseData, GetSalesDashboard200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'years')
  BuiltList<int>? get years;

  @BuiltValueField(wireName: r'months')
  BuiltMap<String, String>? get months;

  @BuiltValueField(wireName: r'payment_modes')
  BuiltList<PaymentMode>? get paymentModes;

  GetSalesDashboard200ResponseData._();

  factory GetSalesDashboard200ResponseData([void updates(GetSalesDashboard200ResponseDataBuilder b)]) = _$GetSalesDashboard200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSalesDashboard200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSalesDashboard200ResponseData> get serializer => _$GetSalesDashboard200ResponseDataSerializer();
}

class _$GetSalesDashboard200ResponseDataSerializer implements PrimitiveSerializer<GetSalesDashboard200ResponseData> {
  @override
  final Iterable<Type> types = const [GetSalesDashboard200ResponseData, _$GetSalesDashboard200ResponseData];

  @override
  final String wireName = r'GetSalesDashboard200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSalesDashboard200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.years != null) {
      yield r'years';
      yield serializers.serialize(
        object.years,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.months != null) {
      yield r'months';
      yield serializers.serialize(
        object.months,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.paymentModes != null) {
      yield r'payment_modes';
      yield serializers.serialize(
        object.paymentModes,
        specifiedType: const FullType(BuiltList, [FullType(PaymentMode)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSalesDashboard200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSalesDashboard200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'years':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.years.replace(valueDes);
          break;
        case r'months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.months.replace(valueDes);
          break;
        case r'payment_modes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PaymentMode)]),
          ) as BuiltList<PaymentMode>;
          result.paymentModes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSalesDashboard200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSalesDashboard200ResponseDataBuilder();
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

