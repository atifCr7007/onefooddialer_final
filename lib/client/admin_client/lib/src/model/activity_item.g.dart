// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityItemTypeEnum _$activityItemTypeEnum_userLogin =
    const ActivityItemTypeEnum._('userLogin');
const ActivityItemTypeEnum _$activityItemTypeEnum_orderCreated =
    const ActivityItemTypeEnum._('orderCreated');
const ActivityItemTypeEnum _$activityItemTypeEnum_kitchenApproved =
    const ActivityItemTypeEnum._('kitchenApproved');
const ActivityItemTypeEnum _$activityItemTypeEnum_systemAlert =
    const ActivityItemTypeEnum._('systemAlert');
const ActivityItemTypeEnum _$activityItemTypeEnum_unknownDefaultOpenApi =
    const ActivityItemTypeEnum._('unknownDefaultOpenApi');

ActivityItemTypeEnum _$activityItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'userLogin':
      return _$activityItemTypeEnum_userLogin;
    case 'orderCreated':
      return _$activityItemTypeEnum_orderCreated;
    case 'kitchenApproved':
      return _$activityItemTypeEnum_kitchenApproved;
    case 'systemAlert':
      return _$activityItemTypeEnum_systemAlert;
    case 'unknownDefaultOpenApi':
      return _$activityItemTypeEnum_unknownDefaultOpenApi;
    default:
      return _$activityItemTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ActivityItemTypeEnum> _$activityItemTypeEnumValues =
    BuiltSet<ActivityItemTypeEnum>(const <ActivityItemTypeEnum>[
      _$activityItemTypeEnum_userLogin,
      _$activityItemTypeEnum_orderCreated,
      _$activityItemTypeEnum_kitchenApproved,
      _$activityItemTypeEnum_systemAlert,
      _$activityItemTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ActivityItemTypeEnum> _$activityItemTypeEnumSerializer =
    _$ActivityItemTypeEnumSerializer();

class _$ActivityItemTypeEnumSerializer
    implements PrimitiveSerializer<ActivityItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'userLogin': 'user_login',
    'orderCreated': 'order_created',
    'kitchenApproved': 'kitchen_approved',
    'systemAlert': 'system_alert',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user_login': 'userLogin',
    'order_created': 'orderCreated',
    'kitchen_approved': 'kitchenApproved',
    'system_alert': 'systemAlert',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityItemTypeEnum];
  @override
  final String wireName = 'ActivityItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ActivityItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ActivityItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ActivityItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ActivityItem extends ActivityItem {
  @override
  final String? id;
  @override
  final ActivityItemTypeEnum? type;
  @override
  final String? description;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final DateTime? timestamp;
  @override
  final Map<String, dynamic>? metadata;

  factory _$ActivityItem([void Function(ActivityItemBuilder)? updates]) =>
      (ActivityItemBuilder()..update(updates))._build();

  _$ActivityItem._({
    this.id,
    this.type,
    this.description,
    this.userId,
    this.userName,
    this.timestamp,
    this.metadata,
  }) : super._();
  @override
  ActivityItem rebuild(void Function(ActivityItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityItemBuilder toBuilder() => ActivityItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityItem &&
        id == other.id &&
        type == other.type &&
        description == other.description &&
        userId == other.userId &&
        userName == other.userName &&
        timestamp == other.timestamp &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityItem')
          ..add('id', id)
          ..add('type', type)
          ..add('description', description)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('timestamp', timestamp)
          ..add('metadata', metadata))
        .toString();
  }
}

class ActivityItemBuilder
    implements Builder<ActivityItem, ActivityItemBuilder> {
  _$ActivityItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ActivityItemTypeEnum? _type;
  ActivityItemTypeEnum? get type => _$this._type;
  set type(ActivityItemTypeEnum? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata => _$this._metadata;
  set metadata(Map<String, dynamic>? metadata) => _$this._metadata = metadata;

  ActivityItemBuilder() {
    ActivityItem._defaults(this);
  }

  ActivityItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _description = $v.description;
      _userId = $v.userId;
      _userName = $v.userName;
      _timestamp = $v.timestamp;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityItem other) {
    _$v = other as _$ActivityItem;
  }

  @override
  void update(void Function(ActivityItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityItem build() => _build();

  _$ActivityItem _build() {
    final _$result =
        _$v ??
        _$ActivityItem._(
          id: id,
          type: type,
          description: description,
          userId: userId,
          userName: userName,
          timestamp: timestamp,
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
