//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sales_comparison.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sales_comparison_year_type_get200_response.g.dart';

/// SalesComparisonYearTypeGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class SalesComparisonYearTypeGet200Response implements Built<SalesComparisonYearTypeGet200Response, SalesComparisonYearTypeGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<SalesComparison>? get data;

  SalesComparisonYearTypeGet200Response._();

  factory SalesComparisonYearTypeGet200Response([void updates(SalesComparisonYearTypeGet200ResponseBuilder b)]) = _$SalesComparisonYearTypeGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SalesComparisonYearTypeGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SalesComparisonYearTypeGet200Response> get serializer => _$SalesComparisonYearTypeGet200ResponseSerializer();
}

class _$SalesComparisonYearTypeGet200ResponseSerializer implements PrimitiveSerializer<SalesComparisonYearTypeGet200Response> {
  @override
  final Iterable<Type> types = const [SalesComparisonYearTypeGet200Response, _$SalesComparisonYearTypeGet200Response];

  @override
  final String wireName = r'SalesComparisonYearTypeGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SalesComparisonYearTypeGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(SalesComparison)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SalesComparisonYearTypeGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SalesComparisonYearTypeGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(SalesComparison)]),
          ) as BuiltList<SalesComparison>;
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
  SalesComparisonYearTypeGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SalesComparisonYearTypeGet200ResponseBuilder();
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

