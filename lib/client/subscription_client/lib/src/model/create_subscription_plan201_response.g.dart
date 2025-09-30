// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subscription_plan201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSubscriptionPlan201Response
    extends CreateSubscriptionPlan201Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final SubscriptionPlan? data;

  factory _$CreateSubscriptionPlan201Response([
    void Function(CreateSubscriptionPlan201ResponseBuilder)? updates,
  ]) => (CreateSubscriptionPlan201ResponseBuilder()..update(updates))._build();

  _$CreateSubscriptionPlan201Response._({this.success, this.message, this.data})
    : super._();
  @override
  CreateSubscriptionPlan201Response rebuild(
    void Function(CreateSubscriptionPlan201ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateSubscriptionPlan201ResponseBuilder toBuilder() =>
      CreateSubscriptionPlan201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSubscriptionPlan201Response &&
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
    return (newBuiltValueToStringHelper(r'CreateSubscriptionPlan201Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateSubscriptionPlan201ResponseBuilder
    implements
        Builder<
          CreateSubscriptionPlan201Response,
          CreateSubscriptionPlan201ResponseBuilder
        > {
  _$CreateSubscriptionPlan201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SubscriptionPlanBuilder? _data;
  SubscriptionPlanBuilder get data =>
      _$this._data ??= SubscriptionPlanBuilder();
  set data(SubscriptionPlanBuilder? data) => _$this._data = data;

  CreateSubscriptionPlan201ResponseBuilder() {
    CreateSubscriptionPlan201Response._defaults(this);
  }

  CreateSubscriptionPlan201ResponseBuilder get _$this {
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
  void replace(CreateSubscriptionPlan201Response other) {
    _$v = other as _$CreateSubscriptionPlan201Response;
  }

  @override
  void update(
    void Function(CreateSubscriptionPlan201ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CreateSubscriptionPlan201Response build() => _build();

  _$CreateSubscriptionPlan201Response _build() {
    _$CreateSubscriptionPlan201Response _$result;
    try {
      _$result =
          _$v ??
          _$CreateSubscriptionPlan201Response._(
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
          r'CreateSubscriptionPlan201Response',
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
