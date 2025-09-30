// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject2 extends InlineObject2 {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$InlineObject2([void Function(InlineObject2Builder)? updates]) =>
      (InlineObject2Builder()..update(updates))._build();

  _$InlineObject2._({this.success, this.message}) : super._();
  @override
  InlineObject2 rebuild(void Function(InlineObject2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject2Builder toBuilder() => InlineObject2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject2 &&
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
    return (newBuiltValueToStringHelper(r'InlineObject2')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class InlineObject2Builder
    implements Builder<InlineObject2, InlineObject2Builder> {
  _$InlineObject2? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InlineObject2Builder() {
    InlineObject2._defaults(this);
  }

  InlineObject2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject2 other) {
    _$v = other as _$InlineObject2;
  }

  @override
  void update(void Function(InlineObject2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineObject2 build() => _build();

  _$InlineObject2 _build() {
    final _$result =
        _$v ?? _$InlineObject2._(success: success, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
