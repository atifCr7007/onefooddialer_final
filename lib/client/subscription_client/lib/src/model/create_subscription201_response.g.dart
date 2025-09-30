// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subscription201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSubscription201Response extends CreateSubscription201Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Subscription? data;

  factory _$CreateSubscription201Response([
    void Function(CreateSubscription201ResponseBuilder)? updates,
  ]) => (CreateSubscription201ResponseBuilder()..update(updates))._build();

  _$CreateSubscription201Response._({this.success, this.message, this.data})
    : super._();
  @override
  CreateSubscription201Response rebuild(
    void Function(CreateSubscription201ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateSubscription201ResponseBuilder toBuilder() =>
      CreateSubscription201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSubscription201Response &&
        success == other.success &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateSubscription201Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateSubscription201ResponseBuilder
    implements
        Builder<
          CreateSubscription201Response,
          CreateSubscription201ResponseBuilder
        > {
  _$CreateSubscription201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SubscriptionBuilder? _data;
  SubscriptionBuilder get data => _$this._data ??= SubscriptionBuilder();
  set data(SubscriptionBuilder? data) => _$this._data = data;

  CreateSubscription201ResponseBuilder() {
    CreateSubscription201Response._defaults(this);
  }

  CreateSubscription201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSubscription201Response other) {
    _$v = other as _$CreateSubscription201Response;
  }

  @override
  void update(void Function(CreateSubscription201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSubscription201Response build() => _build();

  _$CreateSubscription201Response _build() {
    _$CreateSubscription201Response _$result;
    try {
      _$result =
          _$v ??
          _$CreateSubscription201Response._(
            success: success,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateSubscription201Response',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
