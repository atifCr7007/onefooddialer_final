// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteResponse extends DeleteResponse {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$DeleteResponse([void Function(DeleteResponseBuilder)? updates]) =>
      (DeleteResponseBuilder()..update(updates))._build();

  _$DeleteResponse._({this.success, this.message}) : super._();
  @override
  DeleteResponse rebuild(void Function(DeleteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResponseBuilder toBuilder() => DeleteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResponse &&
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
    return (newBuiltValueToStringHelper(r'DeleteResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteResponseBuilder
    implements Builder<DeleteResponse, DeleteResponseBuilder> {
  _$DeleteResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteResponseBuilder() {
    DeleteResponse._defaults(this);
  }

  DeleteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteResponse other) {
    _$v = other as _$DeleteResponse;
  }

  @override
  void update(void Function(DeleteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResponse build() => _build();

  _$DeleteResponse _build() {
    final _$result =
        _$v ?? _$DeleteResponse._(success: success, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
