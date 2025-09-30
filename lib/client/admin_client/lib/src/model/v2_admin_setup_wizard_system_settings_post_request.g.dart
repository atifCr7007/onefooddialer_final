// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_system_settings_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardSystemSettingsPostRequest
    extends V2AdminSetupWizardSystemSettingsPostRequest {
  @override
  final String locale;
  @override
  final String currency;
  @override
  final String currencySymbol;
  @override
  final String timeZone;
  @override
  final int? companyId;
  @override
  final int? unitId;

  factory _$V2AdminSetupWizardSystemSettingsPostRequest([
    void Function(V2AdminSetupWizardSystemSettingsPostRequestBuilder)? updates,
  ]) => (V2AdminSetupWizardSystemSettingsPostRequestBuilder()..update(updates))
      ._build();

  _$V2AdminSetupWizardSystemSettingsPostRequest._({
    required this.locale,
    required this.currency,
    required this.currencySymbol,
    required this.timeZone,
    this.companyId,
    this.unitId,
  }) : super._();
  @override
  V2AdminSetupWizardSystemSettingsPostRequest rebuild(
    void Function(V2AdminSetupWizardSystemSettingsPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardSystemSettingsPostRequestBuilder toBuilder() =>
      V2AdminSetupWizardSystemSettingsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardSystemSettingsPostRequest &&
        locale == other.locale &&
        currency == other.currency &&
        currencySymbol == other.currencySymbol &&
        timeZone == other.timeZone &&
        companyId == other.companyId &&
        unitId == other.unitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, currencySymbol.hashCode);
    _$hash = $jc(_$hash, timeZone.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2AdminSetupWizardSystemSettingsPostRequest',
          )
          ..add('locale', locale)
          ..add('currency', currency)
          ..add('currencySymbol', currencySymbol)
          ..add('timeZone', timeZone)
          ..add('companyId', companyId)
          ..add('unitId', unitId))
        .toString();
  }
}

class V2AdminSetupWizardSystemSettingsPostRequestBuilder
    implements
        Builder<
          V2AdminSetupWizardSystemSettingsPostRequest,
          V2AdminSetupWizardSystemSettingsPostRequestBuilder
        > {
  _$V2AdminSetupWizardSystemSettingsPostRequest? _$v;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _currencySymbol;
  String? get currencySymbol => _$this._currencySymbol;
  set currencySymbol(String? currencySymbol) =>
      _$this._currencySymbol = currencySymbol;

  String? _timeZone;
  String? get timeZone => _$this._timeZone;
  set timeZone(String? timeZone) => _$this._timeZone = timeZone;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  V2AdminSetupWizardSystemSettingsPostRequestBuilder() {
    V2AdminSetupWizardSystemSettingsPostRequest._defaults(this);
  }

  V2AdminSetupWizardSystemSettingsPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locale = $v.locale;
      _currency = $v.currency;
      _currencySymbol = $v.currencySymbol;
      _timeZone = $v.timeZone;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardSystemSettingsPostRequest other) {
    _$v = other as _$V2AdminSetupWizardSystemSettingsPostRequest;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardSystemSettingsPostRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardSystemSettingsPostRequest build() => _build();

  _$V2AdminSetupWizardSystemSettingsPostRequest _build() {
    final _$result =
        _$v ??
        _$V2AdminSetupWizardSystemSettingsPostRequest._(
          locale: BuiltValueNullFieldError.checkNotNull(
            locale,
            r'V2AdminSetupWizardSystemSettingsPostRequest',
            'locale',
          ),
          currency: BuiltValueNullFieldError.checkNotNull(
            currency,
            r'V2AdminSetupWizardSystemSettingsPostRequest',
            'currency',
          ),
          currencySymbol: BuiltValueNullFieldError.checkNotNull(
            currencySymbol,
            r'V2AdminSetupWizardSystemSettingsPostRequest',
            'currencySymbol',
          ),
          timeZone: BuiltValueNullFieldError.checkNotNull(
            timeZone,
            r'V2AdminSetupWizardSystemSettingsPostRequest',
            'timeZone',
          ),
          companyId: companyId,
          unitId: unitId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
