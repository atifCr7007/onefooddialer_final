// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_health_status503_response_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHealthStatus503ResponseDetails
    extends GetHealthStatus503ResponseDetails {
  @override
  final String? database;
  @override
  final String? cache;
  @override
  final String? rabbitmq;

  factory _$GetHealthStatus503ResponseDetails(
          [void Function(GetHealthStatus503ResponseDetailsBuilder)? updates]) =>
      (GetHealthStatus503ResponseDetailsBuilder()..update(updates))._build();

  _$GetHealthStatus503ResponseDetails._(
      {this.database, this.cache, this.rabbitmq})
      : super._();
  @override
  GetHealthStatus503ResponseDetails rebuild(
          void Function(GetHealthStatus503ResponseDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHealthStatus503ResponseDetailsBuilder toBuilder() =>
      GetHealthStatus503ResponseDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHealthStatus503ResponseDetails &&
        database == other.database &&
        cache == other.cache &&
        rabbitmq == other.rabbitmq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, database.hashCode);
    _$hash = $jc(_$hash, cache.hashCode);
    _$hash = $jc(_$hash, rabbitmq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetHealthStatus503ResponseDetails')
          ..add('database', database)
          ..add('cache', cache)
          ..add('rabbitmq', rabbitmq))
        .toString();
  }
}

class GetHealthStatus503ResponseDetailsBuilder
    implements
        Builder<GetHealthStatus503ResponseDetails,
            GetHealthStatus503ResponseDetailsBuilder> {
  _$GetHealthStatus503ResponseDetails? _$v;

  String? _database;
  String? get database => _$this._database;
  set database(String? database) => _$this._database = database;

  String? _cache;
  String? get cache => _$this._cache;
  set cache(String? cache) => _$this._cache = cache;

  String? _rabbitmq;
  String? get rabbitmq => _$this._rabbitmq;
  set rabbitmq(String? rabbitmq) => _$this._rabbitmq = rabbitmq;

  GetHealthStatus503ResponseDetailsBuilder() {
    GetHealthStatus503ResponseDetails._defaults(this);
  }

  GetHealthStatus503ResponseDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _database = $v.database;
      _cache = $v.cache;
      _rabbitmq = $v.rabbitmq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHealthStatus503ResponseDetails other) {
    _$v = other as _$GetHealthStatus503ResponseDetails;
  }

  @override
  void update(
      void Function(GetHealthStatus503ResponseDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHealthStatus503ResponseDetails build() => _build();

  _$GetHealthStatus503ResponseDetails _build() {
    final _$result = _$v ??
        _$GetHealthStatus503ResponseDetails._(
          database: database,
          cache: cache,
          rabbitmq: rabbitmq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
