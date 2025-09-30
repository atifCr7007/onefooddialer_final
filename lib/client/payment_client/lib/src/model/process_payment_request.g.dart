// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProcessPaymentRequestGatewayEnum _$processPaymentRequestGatewayEnum_payu =
    const ProcessPaymentRequestGatewayEnum._('payu');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_instamojo =
    const ProcessPaymentRequestGatewayEnum._('instamojo');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_paytm =
    const ProcessPaymentRequestGatewayEnum._('paytm');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_payeezy =
    const ProcessPaymentRequestGatewayEnum._('payeezy');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_mobikwik =
    const ProcessPaymentRequestGatewayEnum._('mobikwik');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_paypal =
    const ProcessPaymentRequestGatewayEnum._('paypal');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_converge =
    const ProcessPaymentRequestGatewayEnum._('converge');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_yesbank =
    const ProcessPaymentRequestGatewayEnum._('yesbank');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_stripe =
    const ProcessPaymentRequestGatewayEnum._('stripe');
const ProcessPaymentRequestGatewayEnum
_$processPaymentRequestGatewayEnum_unknownDefaultOpenApi =
    const ProcessPaymentRequestGatewayEnum._('unknownDefaultOpenApi');

ProcessPaymentRequestGatewayEnum _$processPaymentRequestGatewayEnumValueOf(
  String name,
) {
  switch (name) {
    case 'payu':
      return _$processPaymentRequestGatewayEnum_payu;
    case 'instamojo':
      return _$processPaymentRequestGatewayEnum_instamojo;
    case 'paytm':
      return _$processPaymentRequestGatewayEnum_paytm;
    case 'payeezy':
      return _$processPaymentRequestGatewayEnum_payeezy;
    case 'mobikwik':
      return _$processPaymentRequestGatewayEnum_mobikwik;
    case 'paypal':
      return _$processPaymentRequestGatewayEnum_paypal;
    case 'converge':
      return _$processPaymentRequestGatewayEnum_converge;
    case 'yesbank':
      return _$processPaymentRequestGatewayEnum_yesbank;
    case 'stripe':
      return _$processPaymentRequestGatewayEnum_stripe;
    case 'unknownDefaultOpenApi':
      return _$processPaymentRequestGatewayEnum_unknownDefaultOpenApi;
    default:
      return _$processPaymentRequestGatewayEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProcessPaymentRequestGatewayEnum>
_$processPaymentRequestGatewayEnumValues =
    BuiltSet<ProcessPaymentRequestGatewayEnum>(
      const <ProcessPaymentRequestGatewayEnum>[
        _$processPaymentRequestGatewayEnum_payu,
        _$processPaymentRequestGatewayEnum_instamojo,
        _$processPaymentRequestGatewayEnum_paytm,
        _$processPaymentRequestGatewayEnum_payeezy,
        _$processPaymentRequestGatewayEnum_mobikwik,
        _$processPaymentRequestGatewayEnum_paypal,
        _$processPaymentRequestGatewayEnum_converge,
        _$processPaymentRequestGatewayEnum_yesbank,
        _$processPaymentRequestGatewayEnum_stripe,
        _$processPaymentRequestGatewayEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ProcessPaymentRequestGatewayEnum>
_$processPaymentRequestGatewayEnumSerializer =
    _$ProcessPaymentRequestGatewayEnumSerializer();

class _$ProcessPaymentRequestGatewayEnumSerializer
    implements PrimitiveSerializer<ProcessPaymentRequestGatewayEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'payu': 'payu',
    'instamojo': 'instamojo',
    'paytm': 'paytm',
    'payeezy': 'payeezy',
    'mobikwik': 'mobikwik',
    'paypal': 'paypal',
    'converge': 'converge',
    'yesbank': 'yesbank',
    'stripe': 'stripe',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'payu': 'payu',
    'instamojo': 'instamojo',
    'paytm': 'paytm',
    'payeezy': 'payeezy',
    'mobikwik': 'mobikwik',
    'paypal': 'paypal',
    'converge': 'converge',
    'yesbank': 'yesbank',
    'stripe': 'stripe',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProcessPaymentRequestGatewayEnum];
  @override
  final String wireName = 'ProcessPaymentRequestGatewayEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProcessPaymentRequestGatewayEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProcessPaymentRequestGatewayEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProcessPaymentRequestGatewayEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProcessPaymentRequest extends ProcessPaymentRequest {
  @override
  final ProcessPaymentRequestGatewayEnum gateway;

  factory _$ProcessPaymentRequest([
    void Function(ProcessPaymentRequestBuilder)? updates,
  ]) => (ProcessPaymentRequestBuilder()..update(updates))._build();

  _$ProcessPaymentRequest._({required this.gateway}) : super._();
  @override
  ProcessPaymentRequest rebuild(
    void Function(ProcessPaymentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessPaymentRequestBuilder toBuilder() =>
      ProcessPaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessPaymentRequest && gateway == other.gateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ProcessPaymentRequest',
    )..add('gateway', gateway)).toString();
  }
}

class ProcessPaymentRequestBuilder
    implements Builder<ProcessPaymentRequest, ProcessPaymentRequestBuilder> {
  _$ProcessPaymentRequest? _$v;

  ProcessPaymentRequestGatewayEnum? _gateway;
  ProcessPaymentRequestGatewayEnum? get gateway => _$this._gateway;
  set gateway(ProcessPaymentRequestGatewayEnum? gateway) =>
      _$this._gateway = gateway;

  ProcessPaymentRequestBuilder() {
    ProcessPaymentRequest._defaults(this);
  }

  ProcessPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gateway = $v.gateway;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessPaymentRequest other) {
    _$v = other as _$ProcessPaymentRequest;
  }

  @override
  void update(void Function(ProcessPaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessPaymentRequest build() => _build();

  _$ProcessPaymentRequest _build() {
    final _$result =
        _$v ??
        _$ProcessPaymentRequest._(
          gateway: BuiltValueNullFieldError.checkNotNull(
            gateway,
            r'ProcessPaymentRequest',
            'gateway',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
