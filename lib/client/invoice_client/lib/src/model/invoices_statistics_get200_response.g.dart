// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_statistics_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesStatisticsGet200Response
    extends InvoicesStatisticsGet200Response {
  @override
  final bool success;
  @override
  final String message;
  @override
  final InvoiceStatistics data;

  factory _$InvoicesStatisticsGet200Response([
    void Function(InvoicesStatisticsGet200ResponseBuilder)? updates,
  ]) => (InvoicesStatisticsGet200ResponseBuilder()..update(updates))._build();

  _$InvoicesStatisticsGet200Response._({
    required this.success,
    required this.message,
    required this.data,
  }) : super._();
  @override
  InvoicesStatisticsGet200Response rebuild(
    void Function(InvoicesStatisticsGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesStatisticsGet200ResponseBuilder toBuilder() =>
      InvoicesStatisticsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesStatisticsGet200Response &&
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
    return (newBuiltValueToStringHelper(r'InvoicesStatisticsGet200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class InvoicesStatisticsGet200ResponseBuilder
    implements
        Builder<
          InvoicesStatisticsGet200Response,
          InvoicesStatisticsGet200ResponseBuilder
        > {
  _$InvoicesStatisticsGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvoiceStatisticsBuilder? _data;
  InvoiceStatisticsBuilder get data =>
      _$this._data ??= InvoiceStatisticsBuilder();
  set data(InvoiceStatisticsBuilder? data) => _$this._data = data;

  InvoicesStatisticsGet200ResponseBuilder() {
    InvoicesStatisticsGet200Response._defaults(this);
  }

  InvoicesStatisticsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesStatisticsGet200Response other) {
    _$v = other as _$InvoicesStatisticsGet200Response;
  }

  @override
  void update(void Function(InvoicesStatisticsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesStatisticsGet200Response build() => _build();

  _$InvoicesStatisticsGet200Response _build() {
    _$InvoicesStatisticsGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$InvoicesStatisticsGet200Response._(
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'InvoicesStatisticsGet200Response',
              'success',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'InvoicesStatisticsGet200Response',
              'message',
            ),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InvoicesStatisticsGet200Response',
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
