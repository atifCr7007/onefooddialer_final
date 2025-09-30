// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertTypeEnum _$alertTypeEnum_info = const AlertTypeEnum._('info');
const AlertTypeEnum _$alertTypeEnum_warning = const AlertTypeEnum._('warning');
const AlertTypeEnum _$alertTypeEnum_error = const AlertTypeEnum._('error');
const AlertTypeEnum _$alertTypeEnum_success = const AlertTypeEnum._('success');
const AlertTypeEnum _$alertTypeEnum_unknownDefaultOpenApi =
    const AlertTypeEnum._('unknownDefaultOpenApi');

AlertTypeEnum _$alertTypeEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$alertTypeEnum_info;
    case 'warning':
      return _$alertTypeEnum_warning;
    case 'error':
      return _$alertTypeEnum_error;
    case 'success':
      return _$alertTypeEnum_success;
    case 'unknownDefaultOpenApi':
      return _$alertTypeEnum_unknownDefaultOpenApi;
    default:
      return _$alertTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AlertTypeEnum> _$alertTypeEnumValues =
    BuiltSet<AlertTypeEnum>(const <AlertTypeEnum>[
      _$alertTypeEnum_info,
      _$alertTypeEnum_warning,
      _$alertTypeEnum_error,
      _$alertTypeEnum_success,
      _$alertTypeEnum_unknownDefaultOpenApi,
    ]);

const AlertSeverityEnum _$alertSeverityEnum_low = const AlertSeverityEnum._(
  'low',
);
const AlertSeverityEnum _$alertSeverityEnum_medium = const AlertSeverityEnum._(
  'medium',
);
const AlertSeverityEnum _$alertSeverityEnum_high = const AlertSeverityEnum._(
  'high',
);
const AlertSeverityEnum _$alertSeverityEnum_critical =
    const AlertSeverityEnum._('critical');
const AlertSeverityEnum _$alertSeverityEnum_unknownDefaultOpenApi =
    const AlertSeverityEnum._('unknownDefaultOpenApi');

AlertSeverityEnum _$alertSeverityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$alertSeverityEnum_low;
    case 'medium':
      return _$alertSeverityEnum_medium;
    case 'high':
      return _$alertSeverityEnum_high;
    case 'critical':
      return _$alertSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$alertSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$alertSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AlertSeverityEnum> _$alertSeverityEnumValues =
    BuiltSet<AlertSeverityEnum>(const <AlertSeverityEnum>[
      _$alertSeverityEnum_low,
      _$alertSeverityEnum_medium,
      _$alertSeverityEnum_high,
      _$alertSeverityEnum_critical,
      _$alertSeverityEnum_unknownDefaultOpenApi,
    ]);

Serializer<AlertTypeEnum> _$alertTypeEnumSerializer =
    _$AlertTypeEnumSerializer();
Serializer<AlertSeverityEnum> _$alertSeverityEnumSerializer =
    _$AlertSeverityEnumSerializer();

class _$AlertTypeEnumSerializer implements PrimitiveSerializer<AlertTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'error': 'error',
    'success': 'success',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'error': 'error',
    'success': 'success',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertTypeEnum];
  @override
  final String wireName = 'AlertTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AlertSeverityEnumSerializer
    implements PrimitiveSerializer<AlertSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'critical': 'critical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'critical': 'critical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertSeverityEnum];
  @override
  final String wireName = 'AlertSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Alert extends Alert {
  @override
  final String? id;
  @override
  final AlertTypeEnum? type;
  @override
  final String? title;
  @override
  final String? message;
  @override
  final AlertSeverityEnum? severity;
  @override
  final DateTime? timestamp;
  @override
  final bool? acknowledged;
  @override
  final String? acknowledgedBy;
  @override
  final DateTime? acknowledgedAt;

  factory _$Alert([void Function(AlertBuilder)? updates]) =>
      (AlertBuilder()..update(updates))._build();

  _$Alert._({
    this.id,
    this.type,
    this.title,
    this.message,
    this.severity,
    this.timestamp,
    this.acknowledged,
    this.acknowledgedBy,
    this.acknowledgedAt,
  }) : super._();
  @override
  Alert rebuild(void Function(AlertBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertBuilder toBuilder() => AlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Alert &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        message == other.message &&
        severity == other.severity &&
        timestamp == other.timestamp &&
        acknowledged == other.acknowledged &&
        acknowledgedBy == other.acknowledgedBy &&
        acknowledgedAt == other.acknowledgedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, acknowledged.hashCode);
    _$hash = $jc(_$hash, acknowledgedBy.hashCode);
    _$hash = $jc(_$hash, acknowledgedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Alert')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('message', message)
          ..add('severity', severity)
          ..add('timestamp', timestamp)
          ..add('acknowledged', acknowledged)
          ..add('acknowledgedBy', acknowledgedBy)
          ..add('acknowledgedAt', acknowledgedAt))
        .toString();
  }
}

class AlertBuilder implements Builder<Alert, AlertBuilder> {
  _$Alert? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AlertTypeEnum? _type;
  AlertTypeEnum? get type => _$this._type;
  set type(AlertTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AlertSeverityEnum? _severity;
  AlertSeverityEnum? get severity => _$this._severity;
  set severity(AlertSeverityEnum? severity) => _$this._severity = severity;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  bool? _acknowledged;
  bool? get acknowledged => _$this._acknowledged;
  set acknowledged(bool? acknowledged) => _$this._acknowledged = acknowledged;

  String? _acknowledgedBy;
  String? get acknowledgedBy => _$this._acknowledgedBy;
  set acknowledgedBy(String? acknowledgedBy) =>
      _$this._acknowledgedBy = acknowledgedBy;

  DateTime? _acknowledgedAt;
  DateTime? get acknowledgedAt => _$this._acknowledgedAt;
  set acknowledgedAt(DateTime? acknowledgedAt) =>
      _$this._acknowledgedAt = acknowledgedAt;

  AlertBuilder() {
    Alert._defaults(this);
  }

  AlertBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _message = $v.message;
      _severity = $v.severity;
      _timestamp = $v.timestamp;
      _acknowledged = $v.acknowledged;
      _acknowledgedBy = $v.acknowledgedBy;
      _acknowledgedAt = $v.acknowledgedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Alert other) {
    _$v = other as _$Alert;
  }

  @override
  void update(void Function(AlertBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Alert build() => _build();

  _$Alert _build() {
    final _$result =
        _$v ??
        _$Alert._(
          id: id,
          type: type,
          title: title,
          message: message,
          severity: severity,
          timestamp: timestamp,
          acknowledged: acknowledged,
          acknowledgedBy: acknowledgedBy,
          acknowledgedAt: acknowledgedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
