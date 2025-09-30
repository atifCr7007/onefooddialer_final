//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert.g.dart';

/// Alert
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
/// * [message] 
/// * [severity] 
/// * [timestamp] 
/// * [acknowledged] 
/// * [acknowledgedBy] 
/// * [acknowledgedAt] 
@BuiltValue()
abstract class Alert implements Built<Alert, AlertBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  AlertTypeEnum? get type;
  // enum typeEnum {  info,  warning,  error,  success,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'severity')
  AlertSeverityEnum? get severity;
  // enum severityEnum {  low,  medium,  high,  critical,  };

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'acknowledged')
  bool? get acknowledged;

  @BuiltValueField(wireName: r'acknowledgedBy')
  String? get acknowledgedBy;

  @BuiltValueField(wireName: r'acknowledgedAt')
  DateTime? get acknowledgedAt;

  Alert._();

  factory Alert([void updates(AlertBuilder b)]) = _$Alert;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Alert> get serializer => _$AlertSerializer();
}

class _$AlertSerializer implements PrimitiveSerializer<Alert> {
  @override
  final Iterable<Type> types = const [Alert, _$Alert];

  @override
  final String wireName = r'Alert';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Alert object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AlertTypeEnum),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(AlertSeverityEnum),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.acknowledged != null) {
      yield r'acknowledged';
      yield serializers.serialize(
        object.acknowledged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.acknowledgedBy != null) {
      yield r'acknowledgedBy';
      yield serializers.serialize(
        object.acknowledgedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.acknowledgedAt != null) {
      yield r'acknowledgedAt';
      yield serializers.serialize(
        object.acknowledgedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Alert object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlertBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertTypeEnum),
          ) as AlertTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'severity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertSeverityEnum),
          ) as AlertSeverityEnum;
          result.severity = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'acknowledged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.acknowledged = valueDes;
          break;
        case r'acknowledgedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.acknowledgedBy = valueDes;
          break;
        case r'acknowledgedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.acknowledgedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Alert deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertBuilder();
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

class AlertTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'info')
  static const AlertTypeEnum info = _$alertTypeEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const AlertTypeEnum warning = _$alertTypeEnum_warning;
  @BuiltValueEnumConst(wireName: r'error')
  static const AlertTypeEnum error = _$alertTypeEnum_error;
  @BuiltValueEnumConst(wireName: r'success')
  static const AlertTypeEnum success = _$alertTypeEnum_success;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlertTypeEnum unknownDefaultOpenApi = _$alertTypeEnum_unknownDefaultOpenApi;

  static Serializer<AlertTypeEnum> get serializer => _$alertTypeEnumSerializer;

  const AlertTypeEnum._(String name): super(name);

  static BuiltSet<AlertTypeEnum> get values => _$alertTypeEnumValues;
  static AlertTypeEnum valueOf(String name) => _$alertTypeEnumValueOf(name);
}

class AlertSeverityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'low')
  static const AlertSeverityEnum low = _$alertSeverityEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const AlertSeverityEnum medium = _$alertSeverityEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const AlertSeverityEnum high = _$alertSeverityEnum_high;
  @BuiltValueEnumConst(wireName: r'critical')
  static const AlertSeverityEnum critical = _$alertSeverityEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlertSeverityEnum unknownDefaultOpenApi = _$alertSeverityEnum_unknownDefaultOpenApi;

  static Serializer<AlertSeverityEnum> get serializer => _$alertSeverityEnumSerializer;

  const AlertSeverityEnum._(String name): super(name);

  static BuiltSet<AlertSeverityEnum> get values => _$alertSeverityEnumValues;
  static AlertSeverityEnum valueOf(String name) => _$alertSeverityEnumValueOf(name);
}

