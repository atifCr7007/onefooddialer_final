// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_config_by_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateConfigByKeyRequest extends UpdateConfigByKeyRequest {
  @override
  final String value;

  factory _$UpdateConfigByKeyRequest(
          [void Function(UpdateConfigByKeyRequestBuilder)? updates]) =>
      (UpdateConfigByKeyRequestBuilder()..update(updates))._build();

  _$UpdateConfigByKeyRequest._({required this.value}) : super._();
  @override
  UpdateConfigByKeyRequest rebuild(
          void Function(UpdateConfigByKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateConfigByKeyRequestBuilder toBuilder() =>
      UpdateConfigByKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConfigByKeyRequest && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateConfigByKeyRequest')
          ..add('value', value))
        .toString();
  }
}

class UpdateConfigByKeyRequestBuilder
    implements
        Builder<UpdateConfigByKeyRequest, UpdateConfigByKeyRequestBuilder> {
  _$UpdateConfigByKeyRequest? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  UpdateConfigByKeyRequestBuilder() {
    UpdateConfigByKeyRequest._defaults(this);
  }

  UpdateConfigByKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateConfigByKeyRequest other) {
    _$v = other as _$UpdateConfigByKeyRequest;
  }

  @override
  void update(void Function(UpdateConfigByKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConfigByKeyRequest build() => _build();

  _$UpdateConfigByKeyRequest _build() {
    final _$result = _$v ??
        _$UpdateConfigByKeyRequest._(
          value: BuiltValueNullFieldError.checkNotNull(
              value, r'UpdateConfigByKeyRequest', 'value'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
