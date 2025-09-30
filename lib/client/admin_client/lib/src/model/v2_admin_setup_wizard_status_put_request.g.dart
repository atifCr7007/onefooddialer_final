// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_status_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardStatusPutRequest
    extends V2AdminSetupWizardStatusPutRequest {
  @override
  final bool? completed;
  @override
  final int? currentStep;
  @override
  final int? companyId;
  @override
  final int? unitId;

  factory _$V2AdminSetupWizardStatusPutRequest([
    void Function(V2AdminSetupWizardStatusPutRequestBuilder)? updates,
  ]) => (V2AdminSetupWizardStatusPutRequestBuilder()..update(updates))._build();

  _$V2AdminSetupWizardStatusPutRequest._({
    this.completed,
    this.currentStep,
    this.companyId,
    this.unitId,
  }) : super._();
  @override
  V2AdminSetupWizardStatusPutRequest rebuild(
    void Function(V2AdminSetupWizardStatusPutRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardStatusPutRequestBuilder toBuilder() =>
      V2AdminSetupWizardStatusPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardStatusPutRequest &&
        completed == other.completed &&
        currentStep == other.currentStep &&
        companyId == other.companyId &&
        unitId == other.unitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, currentStep.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminSetupWizardStatusPutRequest')
          ..add('completed', completed)
          ..add('currentStep', currentStep)
          ..add('companyId', companyId)
          ..add('unitId', unitId))
        .toString();
  }
}

class V2AdminSetupWizardStatusPutRequestBuilder
    implements
        Builder<
          V2AdminSetupWizardStatusPutRequest,
          V2AdminSetupWizardStatusPutRequestBuilder
        > {
  _$V2AdminSetupWizardStatusPutRequest? _$v;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  int? _currentStep;
  int? get currentStep => _$this._currentStep;
  set currentStep(int? currentStep) => _$this._currentStep = currentStep;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  V2AdminSetupWizardStatusPutRequestBuilder() {
    V2AdminSetupWizardStatusPutRequest._defaults(this);
  }

  V2AdminSetupWizardStatusPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completed = $v.completed;
      _currentStep = $v.currentStep;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardStatusPutRequest other) {
    _$v = other as _$V2AdminSetupWizardStatusPutRequest;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardStatusPutRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardStatusPutRequest build() => _build();

  _$V2AdminSetupWizardStatusPutRequest _build() {
    final _$result =
        _$v ??
        _$V2AdminSetupWizardStatusPutRequest._(
          completed: completed,
          currentStep: currentStep,
          companyId: companyId,
          unitId: unitId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
