// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesGet200ResponseData extends InvoicesGet200ResponseData {
  @override
  final BuiltList<Invoice> data;
  @override
  final int currentPage;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  factory _$InvoicesGet200ResponseData([
    void Function(InvoicesGet200ResponseDataBuilder)? updates,
  ]) => (InvoicesGet200ResponseDataBuilder()..update(updates))._build();

  _$InvoicesGet200ResponseData._({
    required this.data,
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
  }) : super._();
  @override
  InvoicesGet200ResponseData rebuild(
    void Function(InvoicesGet200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesGet200ResponseDataBuilder toBuilder() =>
      InvoicesGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesGet200ResponseData &&
        data == other.data &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        perPage == other.perPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvoicesGet200ResponseData')
          ..add('data', data)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('perPage', perPage)
          ..add('total', total))
        .toString();
  }
}

class InvoicesGet200ResponseDataBuilder
    implements
        Builder<InvoicesGet200ResponseData, InvoicesGet200ResponseDataBuilder> {
  _$InvoicesGet200ResponseData? _$v;

  ListBuilder<Invoice>? _data;
  ListBuilder<Invoice> get data => _$this._data ??= ListBuilder<Invoice>();
  set data(ListBuilder<Invoice>? data) => _$this._data = data;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  InvoicesGet200ResponseDataBuilder() {
    InvoicesGet200ResponseData._defaults(this);
  }

  InvoicesGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _perPage = $v.perPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesGet200ResponseData other) {
    _$v = other as _$InvoicesGet200ResponseData;
  }

  @override
  void update(void Function(InvoicesGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesGet200ResponseData build() => _build();

  _$InvoicesGet200ResponseData _build() {
    _$InvoicesGet200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$InvoicesGet200ResponseData._(
            data: data.build(),
            currentPage: BuiltValueNullFieldError.checkNotNull(
              currentPage,
              r'InvoicesGet200ResponseData',
              'currentPage',
            ),
            lastPage: BuiltValueNullFieldError.checkNotNull(
              lastPage,
              r'InvoicesGet200ResponseData',
              'lastPage',
            ),
            perPage: BuiltValueNullFieldError.checkNotNull(
              perPage,
              r'InvoicesGet200ResponseData',
              'perPage',
            ),
            total: BuiltValueNullFieldError.checkNotNull(
              total,
              r'InvoicesGet200ResponseData',
              'total',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InvoicesGet200ResponseData',
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
