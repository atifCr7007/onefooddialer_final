// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_status_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardStatusGet200Response
    extends V2AdminSetupWizardStatusGet200Response {
  @override
  final String? status;
  @override
  final V2SetupWizardStatus? data;

  factory _$V2AdminSetupWizardStatusGet200Response([
    void Function(V2AdminSetupWizardStatusGet200ResponseBuilder)? updates,
  ]) => (V2AdminSetupWizardStatusGet200ResponseBuilder()..update(updates))
      ._build();

  _$V2AdminSetupWizardStatusGet200Response._({this.status, this.data})
    : super._();
  @override
  V2AdminSetupWizardStatusGet200Response rebuild(
    void Function(V2AdminSetupWizardStatusGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardStatusGet200ResponseBuilder toBuilder() =>
      V2AdminSetupWizardStatusGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardStatusGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2AdminSetupWizardStatusGet200Response',
          )
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminSetupWizardStatusGet200ResponseBuilder
    implements
        Builder<
          V2AdminSetupWizardStatusGet200Response,
          V2AdminSetupWizardStatusGet200ResponseBuilder
        > {
  _$V2AdminSetupWizardStatusGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  V2SetupWizardStatusBuilder? _data;
  V2SetupWizardStatusBuilder get data =>
      _$this._data ??= V2SetupWizardStatusBuilder();
  set data(V2SetupWizardStatusBuilder? data) => _$this._data = data;

  V2AdminSetupWizardStatusGet200ResponseBuilder() {
    V2AdminSetupWizardStatusGet200Response._defaults(this);
  }

  V2AdminSetupWizardStatusGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardStatusGet200Response other) {
    _$v = other as _$V2AdminSetupWizardStatusGet200Response;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardStatusGet200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardStatusGet200Response build() => _build();

  _$V2AdminSetupWizardStatusGet200Response _build() {
    _$V2AdminSetupWizardStatusGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminSetupWizardStatusGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminSetupWizardStatusGet200Response',
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
