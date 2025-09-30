// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customers200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomers200ResponseData extends GetCustomers200ResponseData {
  @override
  final BuiltList<Customer>? data;
  @override
  final int? currentPage;
  @override
  final int? perPage;
  @override
  final int? total;

  factory _$GetCustomers200ResponseData([
    void Function(GetCustomers200ResponseDataBuilder)? updates,
  ]) => (GetCustomers200ResponseDataBuilder()..update(updates))._build();

  _$GetCustomers200ResponseData._({
    this.data,
    this.currentPage,
    this.perPage,
    this.total,
  }) : super._();
  @override
  GetCustomers200ResponseData rebuild(
    void Function(GetCustomers200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomers200ResponseDataBuilder toBuilder() =>
      GetCustomers200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomers200ResponseData &&
        data == other.data &&
        currentPage == other.currentPage &&
        perPage == other.perPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCustomers200ResponseData')
          ..add('data', data)
          ..add('currentPage', currentPage)
          ..add('perPage', perPage)
          ..add('total', total))
        .toString();
  }
}

class GetCustomers200ResponseDataBuilder
    implements
        Builder<
          GetCustomers200ResponseData,
          GetCustomers200ResponseDataBuilder
        > {
  _$GetCustomers200ResponseData? _$v;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GetCustomers200ResponseDataBuilder() {
    GetCustomers200ResponseData._defaults(this);
  }

  GetCustomers200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _currentPage = $v.currentPage;
      _perPage = $v.perPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomers200ResponseData other) {
    _$v = other as _$GetCustomers200ResponseData;
  }

  @override
  void update(void Function(GetCustomers200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomers200ResponseData build() => _build();

  _$GetCustomers200ResponseData _build() {
    _$GetCustomers200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$GetCustomers200ResponseData._(
            data: _data?.build() as BuiltList<Customer>?,
            currentPage: currentPage,
            perPage: perPage,
            total: total,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetCustomers200ResponseData',
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
