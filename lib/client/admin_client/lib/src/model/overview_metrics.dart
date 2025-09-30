//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overview_metrics.g.dart';

/// OverviewMetrics
///
/// Properties:
/// * [totalUsers] - Total number of registered users
/// * [totalOrders] - Total number of orders
/// * [totalRevenue] - Total revenue in base currency
/// * [growthRate] - Growth rate percentage
/// * [activeKitchens] - Number of active cloud kitchens
/// * [pendingApprovals] - Number of pending kitchen approvals
@BuiltValue()
abstract class OverviewMetrics implements Built<OverviewMetrics, OverviewMetricsBuilder> {
  /// Total number of registered users
  @BuiltValueField(wireName: r'totalUsers')
  int? get totalUsers;

  /// Total number of orders
  @BuiltValueField(wireName: r'totalOrders')
  int? get totalOrders;

  /// Total revenue in base currency
  @BuiltValueField(wireName: r'totalRevenue')
  double? get totalRevenue;

  /// Growth rate percentage
  @BuiltValueField(wireName: r'growthRate')
  double? get growthRate;

  /// Number of active cloud kitchens
  @BuiltValueField(wireName: r'activeKitchens')
  int? get activeKitchens;

  /// Number of pending kitchen approvals
  @BuiltValueField(wireName: r'pendingApprovals')
  int? get pendingApprovals;

  OverviewMetrics._();

  factory OverviewMetrics([void updates(OverviewMetricsBuilder b)]) = _$OverviewMetrics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OverviewMetricsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OverviewMetrics> get serializer => _$OverviewMetricsSerializer();
}

class _$OverviewMetricsSerializer implements PrimitiveSerializer<OverviewMetrics> {
  @override
  final Iterable<Type> types = const [OverviewMetrics, _$OverviewMetrics];

  @override
  final String wireName = r'OverviewMetrics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OverviewMetrics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalUsers != null) {
      yield r'totalUsers';
      yield serializers.serialize(
        object.totalUsers,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalOrders != null) {
      yield r'totalOrders';
      yield serializers.serialize(
        object.totalOrders,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalRevenue != null) {
      yield r'totalRevenue';
      yield serializers.serialize(
        object.totalRevenue,
        specifiedType: const FullType(double),
      );
    }
    if (object.growthRate != null) {
      yield r'growthRate';
      yield serializers.serialize(
        object.growthRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.activeKitchens != null) {
      yield r'activeKitchens';
      yield serializers.serialize(
        object.activeKitchens,
        specifiedType: const FullType(int),
      );
    }
    if (object.pendingApprovals != null) {
      yield r'pendingApprovals';
      yield serializers.serialize(
        object.pendingApprovals,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OverviewMetrics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OverviewMetricsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalUsers = valueDes;
          break;
        case r'totalOrders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalOrders = valueDes;
          break;
        case r'totalRevenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalRevenue = valueDes;
          break;
        case r'growthRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.growthRate = valueDes;
          break;
        case r'activeKitchens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeKitchens = valueDes;
          break;
        case r'pendingApprovals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pendingApprovals = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OverviewMetrics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OverviewMetricsBuilder();
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

