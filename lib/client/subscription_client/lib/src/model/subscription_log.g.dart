// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionLog extends SubscriptionLog {
  @override
  final int? id;
  @override
  final int? subscriptionId;
  @override
  final int? customerId;
  @override
  final String? action;
  @override
  final String? description;
  @override
  final Map<String, dynamic>? data;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$SubscriptionLog([void Function(SubscriptionLogBuilder)? updates]) =>
      (SubscriptionLogBuilder()..update(updates))._build();

  _$SubscriptionLog._({
    this.id,
    this.subscriptionId,
    this.customerId,
    this.action,
    this.description,
    this.data,
    this.ipAddress,
    this.userAgent,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  SubscriptionLog rebuild(void Function(SubscriptionLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionLogBuilder toBuilder() => SubscriptionLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionLog &&
        id == other.id &&
        subscriptionId == other.subscriptionId &&
        customerId == other.customerId &&
        action == other.action &&
        description == other.description &&
        data == other.data &&
        ipAddress == other.ipAddress &&
        userAgent == other.userAgent &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, userAgent.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionLog')
          ..add('id', id)
          ..add('subscriptionId', subscriptionId)
          ..add('customerId', customerId)
          ..add('action', action)
          ..add('description', description)
          ..add('data', data)
          ..add('ipAddress', ipAddress)
          ..add('userAgent', userAgent)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SubscriptionLogBuilder
    implements Builder<SubscriptionLog, SubscriptionLogBuilder> {
  _$SubscriptionLog? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Map<String, dynamic>? _data;
  Map<String, dynamic>? get data => _$this._data;
  set data(Map<String, dynamic>? data) => _$this._data = data;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  String? _userAgent;
  String? get userAgent => _$this._userAgent;
  set userAgent(String? userAgent) => _$this._userAgent = userAgent;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SubscriptionLogBuilder() {
    SubscriptionLog._defaults(this);
  }

  SubscriptionLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subscriptionId = $v.subscriptionId;
      _customerId = $v.customerId;
      _action = $v.action;
      _description = $v.description;
      _data = $v.data;
      _ipAddress = $v.ipAddress;
      _userAgent = $v.userAgent;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionLog other) {
    _$v = other as _$SubscriptionLog;
  }

  @override
  void update(void Function(SubscriptionLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionLog build() => _build();

  _$SubscriptionLog _build() {
    final _$result =
        _$v ??
        _$SubscriptionLog._(
          id: id,
          subscriptionId: subscriptionId,
          customerId: customerId,
          action: action,
          description: description,
          data: data,
          ipAddress: ipAddress,
          userAgent: userAgent,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
