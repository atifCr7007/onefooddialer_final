//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quick_stats.g.dart';

/// QuickStats
///
/// Properties:
/// * [activeUsers] - Currently active users
/// * [pendingOrders] - Orders pending processing
/// * [systemAlerts] - Active system alerts
/// * [revenue24h] - Revenue in last 24 hours
/// * [orderSuccess] - Order success rate percentage
/// * [avgResponseTime] - Average API response time in milliseconds
@BuiltValue()
abstract class QuickStats implements Built<QuickStats, QuickStatsBuilder> {
  /// Currently active users
  @BuiltValueField(wireName: r'activeUsers')
  int? get activeUsers;

  /// Orders pending processing
  @BuiltValueField(wireName: r'pendingOrders')
  int? get pendingOrders;

  /// Active system alerts
  @BuiltValueField(wireName: r'systemAlerts')
  int? get systemAlerts;

  /// Revenue in last 24 hours
  @BuiltValueField(wireName: r'revenue24h')
  double? get revenue24h;

  /// Order success rate percentage
  @BuiltValueField(wireName: r'orderSuccess')
  double? get orderSuccess;

  /// Average API response time in milliseconds
  @BuiltValueField(wireName: r'avgResponseTime')
  double? get avgResponseTime;

  QuickStats._();

  factory QuickStats([void updates(QuickStatsBuilder b)]) = _$QuickStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuickStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuickStats> get serializer => _$QuickStatsSerializer();
}

class _$QuickStatsSerializer implements PrimitiveSerializer<QuickStats> {
  @override
  final Iterable<Type> types = const [QuickStats, _$QuickStats];

  @override
  final String wireName = r'QuickStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuickStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.activeUsers != null) {
      yield r'activeUsers';
      yield serializers.serialize(
        object.activeUsers,
        specifiedType: const FullType(int),
      );
    }
    if (object.pendingOrders != null) {
      yield r'pendingOrders';
      yield serializers.serialize(
        object.pendingOrders,
        specifiedType: const FullType(int),
      );
    }
    if (object.systemAlerts != null) {
      yield r'systemAlerts';
      yield serializers.serialize(
        object.systemAlerts,
        specifiedType: const FullType(int),
      );
    }
    if (object.revenue24h != null) {
      yield r'revenue24h';
      yield serializers.serialize(
        object.revenue24h,
        specifiedType: const FullType(double),
      );
    }
    if (object.orderSuccess != null) {
      yield r'orderSuccess';
      yield serializers.serialize(
        object.orderSuccess,
        specifiedType: const FullType(double),
      );
    }
    if (object.avgResponseTime != null) {
      yield r'avgResponseTime';
      yield serializers.serialize(
        object.avgResponseTime,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuickStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuickStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activeUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeUsers = valueDes;
          break;
        case r'pendingOrders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pendingOrders = valueDes;
          break;
        case r'systemAlerts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.systemAlerts = valueDes;
          break;
        case r'revenue24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.revenue24h = valueDes;
          break;
        case r'orderSuccess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.orderSuccess = valueDes;
          break;
        case r'avgResponseTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.avgResponseTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuickStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuickStatsBuilder();
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

