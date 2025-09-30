//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revenue_share.g.dart';

/// RevenueShare
///
/// Properties:
/// * [grossAmount] 
@BuiltValue()
abstract class RevenueShare implements Built<RevenueShare, RevenueShareBuilder> {
  @BuiltValueField(wireName: r'gross_amount')
  double? get grossAmount;

  RevenueShare._();

  factory RevenueShare([void updates(RevenueShareBuilder b)]) = _$RevenueShare;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevenueShareBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevenueShare> get serializer => _$RevenueShareSerializer();
}

class _$RevenueShareSerializer implements PrimitiveSerializer<RevenueShare> {
  @override
  final Iterable<Type> types = const [RevenueShare, _$RevenueShare];

  @override
  final String wireName = r'RevenueShare';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevenueShare object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.grossAmount != null) {
      yield r'gross_amount';
      yield serializers.serialize(
        object.grossAmount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RevenueShare object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevenueShareBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gross_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.grossAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevenueShare deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevenueShareBuilder();
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

