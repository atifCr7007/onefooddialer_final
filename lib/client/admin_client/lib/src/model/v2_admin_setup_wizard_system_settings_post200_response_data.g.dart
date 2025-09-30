// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_system_settings_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardSystemSettingsPost200ResponseData
    extends V2AdminSetupWizardSystemSettingsPost200ResponseData {
  @override
  final int? currentStep;

  factory _$V2AdminSetupWizardSystemSettingsPost200ResponseData([
    void Function(V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder)?
    updates,
  ]) =>
      (V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$V2AdminSetupWizardSystemSettingsPost200ResponseData._({this.currentStep})
    : super._();
  @override
  V2AdminSetupWizardSystemSettingsPost200ResponseData rebuild(
    void Function(V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder toBuilder() =>
      V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardSystemSettingsPost200ResponseData &&
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
      r'V2AdminSetupWizardSystemSettingsPost200ResponseData',
    )..add('currentStep', currentStep)).toString();
  }
}

class V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder
    implements
        Builder<
          V2AdminSetupWizardSystemSettingsPost200ResponseData,
          V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder
        > {
  _$V2AdminSetupWizardSystemSettingsPost200ResponseData? _$v;

  int? _currentStep;
  int? get currentStep => _$this._currentStep;
  set currentStep(int? currentStep) => _$this._currentStep = currentStep;

  V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder() {
    V2AdminSetupWizardSystemSettingsPost200ResponseData._defaults(this);
  }

  V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentStep = $v.currentStep;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardSystemSettingsPost200ResponseData other) {
    _$v = other as _$V2AdminSetupWizardSystemSettingsPost200ResponseData;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardSystemSettingsPost200ResponseDataBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardSystemSettingsPost200ResponseData build() => _build();

  _$V2AdminSetupWizardSystemSettingsPost200ResponseData _build() {
    final _$result =
        _$v ??
        _$V2AdminSetupWizardSystemSettingsPost200ResponseData._(
          currentStep: currentStep,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
