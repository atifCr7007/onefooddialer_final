// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginationMeta extends PaginationMeta {
  @override
  final int? currentPage;
  @override
  final int? lastPage;
  @override
  final int? perPage;
  @override
  final int? total;

  factory _$PaginationMeta([void Function(PaginationMetaBuilder)? updates]) =>
      (PaginationMetaBuilder()..update(updates))._build();

  _$PaginationMeta._({
    this.currentPage,
    this.lastPage,
    this.perPage,
    this.total,
  }) : super._();
  @override
  PaginationMeta rebuild(void Function(PaginationMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationMetaBuilder toBuilder() => PaginationMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginationMeta &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        perPage == other.perPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginationMeta')
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('perPage', perPage)
          ..add('total', total))
        .toString();
  }
}

class PaginationMetaBuilder
    implements Builder<PaginationMeta, PaginationMetaBuilder> {
  _$PaginationMeta? _$v;

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

  PaginationMetaBuilder() {
    PaginationMeta._defaults(this);
  }

  PaginationMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _perPage = $v.perPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginationMeta other) {
    _$v = other as _$PaginationMeta;
  }

  @override
  void update(void Function(PaginationMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginationMeta build() => _build();

  _$PaginationMeta _build() {
    final _$result =
        _$v ??
        _$PaginationMeta._(
          currentPage: currentPage,
          lastPage: lastPage,
          perPage: perPage,
          total: total,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
