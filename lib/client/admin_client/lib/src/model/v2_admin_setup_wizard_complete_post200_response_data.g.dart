// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_complete_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardCompletePost200ResponseData
    extends V2AdminSetupWizardCompletePost200ResponseData {
  @override
  final bool? completed;
  @override
  final int? currentStep;

  factory _$V2AdminSetupWizardCompletePost200ResponseData([
    void Function(V2AdminSetupWizardCompletePost200ResponseDataBuilder)?
    updates,
  ]) =>
      (V2AdminSetupWizardCompletePost200ResponseDataBuilder()..update(updates))
          ._build();

  _$V2AdminSetupWizardCompletePost200ResponseData._({
    this.completed,
    this.currentStep,
  }) : super._();
  @override
  V2AdminSetupWizardCompletePost200ResponseData rebuild(
    void Function(V2AdminSetupWizardCompletePost200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardCompletePost200ResponseDataBuilder toBuilder() =>
      V2AdminSetupWizardCompletePost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardCompletePost200ResponseData &&
        completed == other.completed &&
        currentStep == other.currentStep;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, currentStep.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2AdminSetupWizardCompletePost200ResponseData',
          )
          ..add('completed', completed)
          ..add('currentStep', currentStep))
        .toString();
  }
}

class V2AdminSetupWizardCompletePost200ResponseDataBuilder
    implements
        Builder<
          V2AdminSetupWizardCompletePost200ResponseData,
          V2AdminSetupWizardCompletePost200ResponseDataBuilder
        > {
  _$V2AdminSetupWizardCompletePost200ResponseData? _$v;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  int? _currentStep;
  int? get currentStep => _$this._currentStep;
  set currentStep(int? currentStep) => _$this._currentStep = currentStep;

  V2AdminSetupWizardCompletePost200ResponseDataBuilder() {
    V2AdminSetupWizardCompletePost200ResponseData._defaults(this);
  }

  V2AdminSetupWizardCompletePost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completed = $v.completed;
      _currentStep = $v.currentStep;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardCompletePost200ResponseData other) {
    _$v = other as _$V2AdminSetupWizardCompletePost200ResponseData;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardCompletePost200ResponseDataBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardCompletePost200ResponseData build() => _build();

  _$V2AdminSetupWizardCompletePost200ResponseData _build() {
    final _$result =
        _$v ??
        _$V2AdminSetupWizardCompletePost200ResponseData._(
          completed: completed,
          currentStep: currentStep,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
