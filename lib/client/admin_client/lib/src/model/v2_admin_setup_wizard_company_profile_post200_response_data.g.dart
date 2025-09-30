// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_company_profile_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardCompanyProfilePost200ResponseData
    extends V2AdminSetupWizardCompanyProfilePost200ResponseData {
  @override
  final int? currentStep;

  factory _$V2AdminSetupWizardCompanyProfilePost200ResponseData([
    void Function(V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder)?
    updates,
  ]) =>
      (V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$V2AdminSetupWizardCompanyProfilePost200ResponseData._({this.currentStep})
    : super._();
  @override
  V2AdminSetupWizardCompanyProfilePost200ResponseData rebuild(
    void Function(V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder toBuilder() =>
      V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardCompanyProfilePost200ResponseData &&
        currentStep == other.currentStep;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentStep.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'V2AdminSetupWizardCompanyProfilePost200ResponseData',
    )..add('currentStep', currentStep)).toString();
  }
}

class V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder
    implements
        Builder<
          V2AdminSetupWizardCompanyProfilePost200ResponseData,
          V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder
        > {
  _$V2AdminSetupWizardCompanyProfilePost200ResponseData? _$v;

  int? _currentStep;
  int? get currentStep => _$this._currentStep;
  set currentStep(int? currentStep) => _$this._currentStep = currentStep;

  V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder() {
    V2AdminSetupWizardCompanyProfilePost200ResponseData._defaults(this);
  }

  V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentStep = $v.currentStep;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardCompanyProfilePost200ResponseData other) {
    _$v = other as _$V2AdminSetupWizardCompanyProfilePost200ResponseData;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardCompanyProfilePost200ResponseDataBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardCompanyProfilePost200ResponseData build() => _build();

  _$V2AdminSetupWizardCompanyProfilePost200ResponseData _build() {
    final _$result =
        _$v ??
        _$V2AdminSetupWizardCompanyProfilePost200ResponseData._(
          currentStep: currentStep,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
