// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_status_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardStatusPut200Response
    extends V2AdminSetupWizardStatusPut200Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final V2SetupWizardStatus? data;

  factory _$V2AdminSetupWizardStatusPut200Response([
    void Function(V2AdminSetupWizardStatusPut200ResponseBuilder)? updates,
  ]) => (V2AdminSetupWizardStatusPut200ResponseBuilder()..update(updates))
      ._build();

  _$V2AdminSetupWizardStatusPut200Response._({
    this.status,
    this.message,
    this.data,
  }) : super._();
  @override
  V2AdminSetupWizardStatusPut200Response rebuild(
    void Function(V2AdminSetupWizardStatusPut200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardStatusPut200ResponseBuilder toBuilder() =>
      V2AdminSetupWizardStatusPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardStatusPut200Response &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2AdminSetupWizardStatusPut200Response',
          )
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class V2AdminSetupWizardStatusPut200ResponseBuilder
    implements
        Builder<
          V2AdminSetupWizardStatusPut200Response,
          V2AdminSetupWizardStatusPut200ResponseBuilder
        > {
  _$V2AdminSetupWizardStatusPut200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V2SetupWizardStatusBuilder? _data;
  V2SetupWizardStatusBuilder get data =>
      _$this._data ??= V2SetupWizardStatusBuilder();
  set data(V2SetupWizardStatusBuilder? data) => _$this._data = data;

  V2AdminSetupWizardStatusPut200ResponseBuilder() {
    V2AdminSetupWizardStatusPut200Response._defaults(this);
  }

  V2AdminSetupWizardStatusPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardStatusPut200Response other) {
    _$v = other as _$V2AdminSetupWizardStatusPut200Response;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardStatusPut200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardStatusPut200Response build() => _build();

  _$V2AdminSetupWizardStatusPut200Response _build() {
    _$V2AdminSetupWizardStatusPut200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminSetupWizardStatusPut200Response._(
            status: status,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminSetupWizardStatusPut200Response',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
