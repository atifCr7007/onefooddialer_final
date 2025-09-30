// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_setup_wizard_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2SetupWizardStatus extends V2SetupWizardStatus {
  @override
  final bool? completed;
  @override
  final int? currentStep;

  factory _$V2SetupWizardStatus([
    void Function(V2SetupWizardStatusBuilder)? updates,
  ]) => (V2SetupWizardStatusBuilder()..update(updates))._build();

  _$V2SetupWizardStatus._({this.completed, this.currentStep}) : super._();
  @override
  V2SetupWizardStatus rebuild(
    void Function(V2SetupWizardStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2SetupWizardStatusBuilder toBuilder() =>
      V2SetupWizardStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2SetupWizardStatus &&
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
    return (newBuiltValueToStringHelper(r'V2SetupWizardStatus')
          ..add('completed', completed)
          ..add('currentStep', currentStep))
        .toString();
  }
}

class V2SetupWizardStatusBuilder
    implements Builder<V2SetupWizardStatus, V2SetupWizardStatusBuilder> {
  _$V2SetupWizardStatus? _$v;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  int? _currentStep;
  int? get currentStep => _$this._currentStep;
  set currentStep(int? currentStep) => _$this._currentStep = currentStep;

  V2SetupWizardStatusBuilder() {
    V2SetupWizardStatus._defaults(this);
  }

  V2SetupWizardStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completed = $v.completed;
      _currentStep = $v.currentStep;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2SetupWizardStatus other) {
    _$v = other as _$V2SetupWizardStatus;
  }

  @override
  void update(void Function(V2SetupWizardStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2SetupWizardStatus build() => _build();

  _$V2SetupWizardStatus _build() {
    final _$result =
        _$v ??
        _$V2SetupWizardStatus._(completed: completed, currentStep: currentStep);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
