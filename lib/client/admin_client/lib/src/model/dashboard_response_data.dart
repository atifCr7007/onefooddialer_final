//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/quick_stats.dart';
import 'package:admin_client/src/model/activity_item.dart';
import 'package:admin_client/src/model/alert.dart';
import 'package:built_collection/built_collection.dart';
import 'package:admin_client/src/model/chart_data.dart';
import 'package:admin_client/src/model/system_health.dart';
import 'package:admin_client/src/model/overview_metrics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_response_data.g.dart';

/// DashboardResponseData
///
/// Properties:
/// * [overview] 
/// * [quickStats] 
/// * [charts] 
/// * [systemHealth] 
/// * [alerts] 
/// * [recentActivity] 
@BuiltValue()
abstract class DashboardResponseData implements Built<DashboardResponseData, DashboardResponseDataBuilder> {
  @BuiltValueField(wireName: r'overview')
  OverviewMetrics? get overview;

  @BuiltValueField(wireName: r'quickStats')
  QuickStats? get quickStats;

  @BuiltValueField(wireName: r'charts')
  BuiltList<ChartData>? get charts;

  @BuiltValueField(wireName: r'systemHealth')
  SystemHealth? get systemHealth;

  @BuiltValueField(wireName: r'alerts')
  BuiltList<Alert>? get alerts;

  @BuiltValueField(wireName: r'recentActivity')
  BuiltList<ActivityItem>? get recentActivity;

  DashboardResponseData._();

  factory DashboardResponseData([void updates(DashboardResponseDataBuilder b)]) = _$DashboardResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardResponseData> get serializer => _$DashboardResponseDataSerializer();
}

class _$DashboardResponseDataSerializer implements PrimitiveSerializer<DashboardResponseData> {
  @override
  final Iterable<Type> types = const [DashboardResponseData, _$DashboardResponseData];

  @override
  final String wireName = r'DashboardResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.overview != null) {
      yield r'overview';
      yield serializers.serialize(
        object.overview,
        specifiedType: const FullType(OverviewMetrics),
      );
    }
    if (object.quickStats != null) {
      yield r'quickStats';
      yield serializers.serialize(
        object.quickStats,
        specifiedType: const FullType(QuickStats),
      );
    }
    if (object.charts != null) {
      yield r'charts';
      yield serializers.serialize(
        object.charts,
        specifiedType: const FullType(BuiltList, [FullType(ChartData)]),
      );
    }
    if (object.systemHealth != null) {
      yield r'systemHealth';
      yield serializers.serialize(
        object.systemHealth,
        specifiedType: const FullType(SystemHealth),
      );
    }
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(BuiltList, [FullType(Alert)]),
      );
    }
    if (object.recentActivity != null) {
      yield r'recentActivity';
      yield serializers.serialize(
        object.recentActivity,
        specifiedType: const FullType(BuiltList, [FullType(ActivityItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'overview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OverviewMetrics),
          ) as OverviewMetrics;
          result.overview.replace(valueDes);
          break;
        case r'quickStats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuickStats),
          ) as QuickStats;
          result.quickStats.replace(valueDes);
          break;
        case r'charts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChartData)]),
          ) as BuiltList<ChartData>;
          result.charts.replace(valueDes);
          break;
        case r'systemHealth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemHealth),
          ) as SystemHealth;
          result.systemHealth.replace(valueDes);
          break;
        case r'alerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Alert)]),
          ) as BuiltList<Alert>;
          result.alerts.replace(valueDes);
          break;
        case r'recentActivity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ActivityItem)]),
          ) as BuiltList<ActivityItem>;
          result.recentActivity.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardResponseDataBuilder();
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

