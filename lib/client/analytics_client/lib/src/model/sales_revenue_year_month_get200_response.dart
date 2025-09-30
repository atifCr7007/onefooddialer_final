//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/revenue_share.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sales_revenue_year_month_get200_response.g.dart';

/// SalesRevenueYearMonthGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class SalesRevenueYearMonthGet200Response implements Built<SalesRevenueYearMonthGet200Response, SalesRevenueYearMonthGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<RevenueShare>? get data;

  SalesRevenueYearMonthGet200Response._();

  factory SalesRevenueYearMonthGet200Response([void updates(SalesRevenueYearMonthGet200ResponseBuilder b)]) = _$SalesRevenueYearMonthGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SalesRevenueYearMonthGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SalesRevenueYearMonthGet200Response> get serializer => _$SalesRevenueYearMonthGet200ResponseSerializer();
}

class _$SalesRevenueYearMonthGet200ResponseSerializer implements PrimitiveSerializer<SalesRevenueYearMonthGet200Response> {
  @override
  final Iterable<Type> types = const [SalesRevenueYearMonthGet200Response, _$SalesRevenueYearMonthGet200Response];

  @override
  final String wireName = r'SalesRevenueYearMonthGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SalesRevenueYearMonthGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(RevenueShare)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SalesRevenueYearMonthGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SalesRevenueYearMonthGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RevenueShare)]),
          ) as BuiltList<RevenueShare>;
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
  SalesRevenueYearMonthGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SalesRevenueYearMonthGet200ResponseBuilder();
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

