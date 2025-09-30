//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sales_comparison.g.dart';

/// SalesComparison
///
/// Properties:
/// * [period] 
/// * [grossAmount] 
/// * [netAmount] 
@BuiltValue()
abstract class SalesComparison implements Built<SalesComparison, SalesComparisonBuilder> {
  @BuiltValueField(wireName: r'period')
  String? get period;

  @BuiltValueField(wireName: r'gross_amount')
  double? get grossAmount;

  @BuiltValueField(wireName: r'net_amount')
  double? get netAmount;

  SalesComparison._();

  factory SalesComparison([void updates(SalesComparisonBuilder b)]) = _$SalesComparison;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SalesComparisonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SalesComparison> get serializer => _$SalesComparisonSerializer();
}

class _$SalesComparisonSerializer implements PrimitiveSerializer<SalesComparison> {
  @override
  final Iterable<Type> types = const [SalesComparison, _$SalesComparison];

  @override
  final String wireName = r'SalesComparison';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SalesComparison object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(String),
      );
    }
    if (object.grossAmount != null) {
      yield r'gross_amount';
      yield serializers.serialize(
        object.grossAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.netAmount != null) {
      yield r'net_amount';
      yield serializers.serialize(
        object.netAmount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SalesComparison object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SalesComparisonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
          break;
        case r'gross_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.grossAmount = valueDes;
          break;
        case r'net_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.netAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SalesComparison deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SalesComparisonBuilder();
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

