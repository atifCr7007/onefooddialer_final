// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_subscription_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProcessSubscriptionPaymentRequestPaymentStatusEnum
_$processSubscriptionPaymentRequestPaymentStatusEnum_pending =
    const ProcessSubscriptionPaymentRequestPaymentStatusEnum._('pending');
const ProcessSubscriptionPaymentRequestPaymentStatusEnum
_$processSubscriptionPaymentRequestPaymentStatusEnum_completed =
    const ProcessSubscriptionPaymentRequestPaymentStatusEnum._('completed');
const ProcessSubscriptionPaymentRequestPaymentStatusEnum
_$processSubscriptionPaymentRequestPaymentStatusEnum_failed =
    const ProcessSubscriptionPaymentRequestPaymentStatusEnum._('failed');
const ProcessSubscriptionPaymentRequestPaymentStatusEnum
_$processSubscriptionPaymentRequestPaymentStatusEnum_unknownDefaultOpenApi =
    const ProcessSubscriptionPaymentRequestPaymentStatusEnum._(
      'unknownDefaultOpenApi',
    );

ProcessSubscriptionPaymentRequestPaymentStatusEnum
_$processSubscriptionPaymentRequestPaymentStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$processSubscriptionPaymentRequestPaymentStatusEnum_pending;
    case 'completed':
      return _$processSubscriptionPaymentRequestPaymentStatusEnum_completed;
    case 'failed':
      return _$processSubscriptionPaymentRequestPaymentStatusEnum_failed;
    case 'unknownDefaultOpenApi':
      return _$processSubscriptionPaymentRequestPaymentStatusEnum_unknownDefaultOpenApi;
    default:
      return _$processSubscriptionPaymentRequestPaymentStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProcessSubscriptionPaymentRequestPaymentStatusEnum>
_$processSubscriptionPaymentRequestPaymentStatusEnumValues =
    BuiltSet<ProcessSubscriptionPaymentRequestPaymentStatusEnum>(const <
      ProcessSubscriptionPaymentRequestPaymentStatusEnum
    >[
      _$processSubscriptionPaymentRequestPaymentStatusEnum_pending,
      _$processSubscriptionPaymentRequestPaymentStatusEnum_completed,
      _$processSubscriptionPaymentRequestPaymentStatusEnum_failed,
      _$processSubscriptionPaymentRequestPaymentStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProcessSubscriptionPaymentRequestPaymentStatusEnum>
_$processSubscriptionPaymentRequestPaymentStatusEnumSerializer =
    _$ProcessSubscriptionPaymentRequestPaymentStatusEnumSerializer();

class _$ProcessSubscriptionPaymentRequestPaymentStatusEnumSerializer
    implements
        PrimitiveSerializer<
          ProcessSubscriptionPaymentRequestPaymentStatusEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'completed': 'completed',
    'failed': 'failed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'completed': 'completed',
    'failed': 'failed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProcessSubscriptionPaymentRequestPaymentStatusEnum,
  ];
  @override
  final String wireName = 'ProcessSubscriptionPaymentRequestPaymentStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProcessSubscriptionPaymentRequestPaymentStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProcessSubscriptionPaymentRequestPaymentStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProcessSubscriptionPaymentRequestPaymentStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProcessSubscriptionPaymentRequest
    extends ProcessSubscriptionPaymentRequest {
  @override
  final String paymentMethod;
  @override
  final ProcessSubscriptionPaymentRequestPaymentStatusEnum paymentStatus;
  @override
  final String? transactionId;
  @override
  final Map<String, dynamic>? paymentDetails;

  factory _$ProcessSubscriptionPaymentRequest([
    void Function(ProcessSubscriptionPaymentRequestBuilder)? updates,
  ]) => (ProcessSubscriptionPaymentRequestBuilder()..update(updates))._build();

  _$ProcessSubscriptionPaymentRequest._({
    required this.paymentMethod,
    required this.paymentStatus,
    this.transactionId,
    this.paymentDetails,
  }) : super._();
  @override
  ProcessSubscriptionPaymentRequest rebuild(
    void Function(ProcessSubscriptionPaymentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessSubscriptionPaymentRequestBuilder toBuilder() =>
      ProcessSubscriptionPaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessSubscriptionPaymentRequest &&
        paymentMethod == other.paymentMethod &&
        paymentStatus == other.paymentStatus &&
        transactionId == other.transactionId &&
        paymentDetails == other.paymentDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, paymentDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessSubscriptionPaymentRequest')
          ..add('paymentMethod', paymentMethod)
          ..add('paymentStatus', paymentStatus)
          ..add('transactionId', transactionId)
          ..add('paymentDetails', paymentDetails))
        .toString();
  }
}

class ProcessSubscriptionPaymentRequestBuilder
    implements
        Builder<
          ProcessSubscriptionPaymentRequest,
          ProcessSubscriptionPaymentRequestBuilder
        > {
  _$ProcessSubscriptionPaymentRequest? _$v;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  ProcessSubscriptionPaymentRequestPaymentStatusEnum? _paymentStatus;
  ProcessSubscriptionPaymentRequestPaymentStatusEnum? get paymentStatus =>
      _$this._paymentStatus;
  set paymentStatus(
    ProcessSubscriptionPaymentRequestPaymentStatusEnum? paymentStatus,
  ) => _$this._paymentStatus = paymentStatus;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  Map<String, dynamic>? _paymentDetails;
  Map<String, dynamic>? get paymentDetails => _$this._paymentDetails;
  set paymentDetails(Map<String, dynamic>? paymentDetails) =>
      _$this._paymentDetails = paymentDetails;

  ProcessSubscriptionPaymentRequestBuilder() {
    ProcessSubscriptionPaymentRequest._defaults(this);
  }

  ProcessSubscriptionPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentMethod = $v.paymentMethod;
      _paymentStatus = $v.paymentStatus;
      _transactionId = $v.transactionId;
      _paymentDetails = $v.paymentDetails;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessSubscriptionPaymentRequest other) {
    _$v = other as _$ProcessSubscriptionPaymentRequest;
  }

  @override
  void update(
    void Function(ProcessSubscriptionPaymentRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ProcessSubscriptionPaymentRequest build() => _build();

  _$ProcessSubscriptionPaymentRequest _build() {
    final _$result =
        _$v ??
        _$ProcessSubscriptionPaymentRequest._(
          paymentMethod: BuiltValueNullFieldError.checkNotNull(
            paymentMethod,
            r'ProcessSubscriptionPaymentRequest',
            'paymentMethod',
          ),
          paymentStatus: BuiltValueNullFieldError.checkNotNull(
            paymentStatus,
            r'ProcessSubscriptionPaymentRequest',
            'paymentStatus',
          ),
          transactionId: transactionId,
          paymentDetails: paymentDetails,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
