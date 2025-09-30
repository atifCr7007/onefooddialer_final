// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_setup_wizard_company_profile_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminSetupWizardCompanyProfilePostRequest
    extends V2AdminSetupWizardCompanyProfilePostRequest {
  @override
  final String companyName;
  @override
  final String postalAddress;
  @override
  final String supportEmail;
  @override
  final String phone;
  @override
  final String senderId;
  @override
  final int? companyId;
  @override
  final int? unitId;

  factory _$V2AdminSetupWizardCompanyProfilePostRequest([
    void Function(V2AdminSetupWizardCompanyProfilePostRequestBuilder)? updates,
  ]) => (V2AdminSetupWizardCompanyProfilePostRequestBuilder()..update(updates))
      ._build();

  _$V2AdminSetupWizardCompanyProfilePostRequest._({
    required this.companyName,
    required this.postalAddress,
    required this.supportEmail,
    required this.phone,
    required this.senderId,
    this.companyId,
    this.unitId,
  }) : super._();
  @override
  V2AdminSetupWizardCompanyProfilePostRequest rebuild(
    void Function(V2AdminSetupWizardCompanyProfilePostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminSetupWizardCompanyProfilePostRequestBuilder toBuilder() =>
      V2AdminSetupWizardCompanyProfilePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminSetupWizardCompanyProfilePostRequest &&
        companyName == other.companyName &&
        postalAddress == other.postalAddress &&
        supportEmail == other.supportEmail &&
        phone == other.phone &&
        senderId == other.senderId &&
        companyId == other.companyId &&
        unitId == other.unitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, postalAddress.hashCode);
    _$hash = $jc(_$hash, supportEmail.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, senderId.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'V2AdminSetupWizardCompanyProfilePostRequest',
          )
          ..add('companyName', companyName)
          ..add('postalAddress', postalAddress)
          ..add('supportEmail', supportEmail)
          ..add('phone', phone)
          ..add('senderId', senderId)
          ..add('companyId', companyId)
          ..add('unitId', unitId))
        .toString();
  }
}

class V2AdminSetupWizardCompanyProfilePostRequestBuilder
    implements
        Builder<
          V2AdminSetupWizardCompanyProfilePostRequest,
          V2AdminSetupWizardCompanyProfilePostRequestBuilder
        > {
  _$V2AdminSetupWizardCompanyProfilePostRequest? _$v;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _postalAddress;
  String? get postalAddress => _$this._postalAddress;
  set postalAddress(String? postalAddress) =>
      _$this._postalAddress = postalAddress;

  String? _supportEmail;
  String? get supportEmail => _$this._supportEmail;
  set supportEmail(String? supportEmail) => _$this._supportEmail = supportEmail;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  V2AdminSetupWizardCompanyProfilePostRequestBuilder() {
    V2AdminSetupWizardCompanyProfilePostRequest._defaults(this);
  }

  V2AdminSetupWizardCompanyProfilePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyName = $v.companyName;
      _postalAddress = $v.postalAddress;
      _supportEmail = $v.supportEmail;
      _phone = $v.phone;
      _senderId = $v.senderId;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminSetupWizardCompanyProfilePostRequest other) {
    _$v = other as _$V2AdminSetupWizardCompanyProfilePostRequest;
  }

  @override
  void update(
    void Function(V2AdminSetupWizardCompanyProfilePostRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminSetupWizardCompanyProfilePostRequest build() => _build();

  _$V2AdminSetupWizardCompanyProfilePostRequest _build() {
    final _$result =
        _$v ??
        _$V2AdminSetupWizardCompanyProfilePostRequest._(
          companyName: BuiltValueNullFieldError.checkNotNull(
            companyName,
            r'V2AdminSetupWizardCompanyProfilePostRequest',
            'companyName',
          ),
          postalAddress: BuiltValueNullFieldError.checkNotNull(
            postalAddress,
            r'V2AdminSetupWizardCompanyProfilePostRequest',
            'postalAddress',
          ),
          supportEmail: BuiltValueNullFieldError.checkNotNull(
            supportEmail,
            r'V2AdminSetupWizardCompanyProfilePostRequest',
            'supportEmail',
          ),
          phone: BuiltValueNullFieldError.checkNotNull(
            phone,
            r'V2AdminSetupWizardCompanyProfilePostRequest',
            'phone',
          ),
          senderId: BuiltValueNullFieldError.checkNotNull(
            senderId,
            r'V2AdminSetupWizardCompanyProfilePostRequest',
            'senderId',
          ),
          companyId: companyId,
          unitId: unitId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
