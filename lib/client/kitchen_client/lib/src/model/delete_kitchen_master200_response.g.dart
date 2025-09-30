// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_kitchen_master200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteKitchenMaster200Response extends DeleteKitchenMaster200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$DeleteKitchenMaster200Response([
    void Function(DeleteKitchenMaster200ResponseBuilder)? updates,
  ]) => (DeleteKitchenMaster200ResponseBuilder()..update(updates))._build();

  _$DeleteKitchenMaster200Response._({this.success, this.message}) : super._();
  @override
  DeleteKitchenMaster200Response rebuild(
    void Function(DeleteKitchenMaster200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteKitchenMaster200ResponseBuilder toBuilder() =>
      DeleteKitchenMaster200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteKitchenMaster200Response &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteKitchenMaster200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteKitchenMaster200ResponseBuilder
    implements
        Builder<
          DeleteKitchenMaster200Response,
          DeleteKitchenMaster200ResponseBuilder
        > {
  _$DeleteKitchenMaster200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteKitchenMaster200ResponseBuilder() {
    DeleteKitchenMaster200Response._defaults(this);
  }

  DeleteKitchenMaster200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteKitchenMaster200Response other) {
    _$v = other as _$DeleteKitchenMaster200Response;
  }

  @override
  void update(void Function(DeleteKitchenMaster200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteKitchenMaster200Response build() => _build();

  _$DeleteKitchenMaster200Response _build() {
    final _$result =
        _$v ??
        _$DeleteKitchenMaster200Response._(success: success, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
