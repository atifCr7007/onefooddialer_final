// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginationMeta extends PaginationMeta {
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? totalPages;
  @override
  final bool? hasNext;
  @override
  final bool? hasPrev;

  factory _$PaginationMeta([void Function(PaginationMetaBuilder)? updates]) =>
      (PaginationMetaBuilder()..update(updates))._build();

  _$PaginationMeta._({
    this.page,
    this.limit,
    this.total,
    this.totalPages,
    this.hasNext,
    this.hasPrev,
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
        page == other.page &&
        limit == other.limit &&
        total == other.total &&
        totalPages == other.totalPages &&
        hasNext == other.hasNext &&
        hasPrev == other.hasPrev;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jc(_$hash, hasPrev.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginationMeta')
          ..add('page', page)
          ..add('limit', limit)
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('hasNext', hasNext)
          ..add('hasPrev', hasPrev))
        .toString();
  }
}

class PaginationMetaBuilder
    implements Builder<PaginationMeta, PaginationMetaBuilder> {
  _$PaginationMeta? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  bool? _hasPrev;
  bool? get hasPrev => _$this._hasPrev;
  set hasPrev(bool? hasPrev) => _$this._hasPrev = hasPrev;

  PaginationMetaBuilder() {
    PaginationMeta._defaults(this);
  }

  PaginationMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _limit = $v.limit;
      _total = $v.total;
      _totalPages = $v.totalPages;
      _hasNext = $v.hasNext;
      _hasPrev = $v.hasPrev;
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
          page: page,
          limit: limit,
          total: total,
          totalPages: totalPages,
          hasNext: hasNext,
          hasPrev: hasPrev,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
