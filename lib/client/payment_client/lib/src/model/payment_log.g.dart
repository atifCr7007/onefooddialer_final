// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentLog extends PaymentLog {
  @override
  final int? id;
  @override
  final int? transactionId;
  @override
  final String? gateway;
  @override
  final String? event;
  @override
  final String? status;
  @override
  final Map<String, dynamic>? requestData;
  @override
  final Map<String, dynamic>? responseData;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PaymentLog([void Function(PaymentLogBuilder)? updates]) =>
      (PaymentLogBuilder()..update(updates))._build();

  _$PaymentLog._({
    this.id,
    this.transactionId,
    this.gateway,
    this.event,
    this.status,
    this.requestData,
    this.responseData,
    this.ipAddress,
    this.userAgent,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  PaymentLog rebuild(void Function(PaymentLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentLogBuilder toBuilder() => PaymentLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentLog &&
        id == other.id &&
        transactionId == other.transactionId &&
        gateway == other.gateway &&
        event == other.event &&
        status == other.status &&
        requestData == other.requestData &&
        responseData == other.responseData &&
        ipAddress == other.ipAddress &&
        userAgent == other.userAgent &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, gateway.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requestData.hashCode);
    _$hash = $jc(_$hash, responseData.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, userAgent.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentLog')
          ..add('id', id)
          ..add('transactionId', transactionId)
          ..add('gateway', gateway)
          ..add('event', event)
          ..add('status', status)
          ..add('requestData', requestData)
          ..add('responseData', responseData)
          ..add('ipAddress', ipAddress)
          ..add('userAgent', userAgent)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PaymentLogBuilder implements Builder<PaymentLog, PaymentLogBuilder> {
  _$PaymentLog? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _transactionId;
  int? get transactionId => _$this._transactionId;
  set transactionId(int? transactionId) =>
      _$this._transactionId = transactionId;

  String? _gateway;
  String? get gateway => _$this._gateway;
  set gateway(String? gateway) => _$this._gateway = gateway;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  Map<String, dynamic>? _requestData;
  Map<String, dynamic>? get requestData => _$this._requestData;
  set requestData(Map<String, dynamic>? requestData) =>
      _$this._requestData = requestData;

  Map<String, dynamic>? _responseData;
  Map<String, dynamic>? get responseData => _$this._responseData;
  set responseData(Map<String, dynamic>? responseData) =>
      _$this._responseData = responseData;

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

  PaymentLogBuilder() {
    PaymentLog._defaults(this);
  }

  PaymentLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _transactionId = $v.transactionId;
      _gateway = $v.gateway;
      _event = $v.event;
      _status = $v.status;
      _requestData = $v.requestData;
      _responseData = $v.responseData;
      _ipAddress = $v.ipAddress;
      _userAgent = $v.userAgent;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentLog other) {
    _$v = other as _$PaymentLog;
  }

  @override
  void update(void Function(PaymentLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentLog build() => _build();

  _$PaymentLog _build() {
    final _$result =
        _$v ??
        _$PaymentLog._(
          id: id,
          transactionId: transactionId,
          gateway: gateway,
          event: event,
          status: status,
          requestData: requestData,
          responseData: responseData,
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
