// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_meals200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllMeals200Response extends GetAllMeals200Response {
  @override
  final String? status;
  @override
  final BuiltList<Meal>? data;

  factory _$GetAllMeals200Response([
    void Function(GetAllMeals200ResponseBuilder)? updates,
  ]) => (GetAllMeals200ResponseBuilder()..update(updates))._build();

  _$GetAllMeals200Response._({this.status, this.data}) : super._();
  @override
  GetAllMeals200Response rebuild(
    void Function(GetAllMeals200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetAllMeals200ResponseBuilder toBuilder() =>
      GetAllMeals200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllMeals200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAllMeals200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetAllMeals200ResponseBuilder
    implements Builder<GetAllMeals200Response, GetAllMeals200ResponseBuilder> {
  _$GetAllMeals200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  GetAllMeals200ResponseBuilder() {
    GetAllMeals200Response._defaults(this);
  }

  GetAllMeals200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAllMeals200Response other) {
    _$v = other as _$GetAllMeals200Response;
  }

  @override
  void update(void Function(GetAllMeals200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllMeals200Response build() => _build();

  _$GetAllMeals200Response _build() {
    _$GetAllMeals200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetAllMeals200Response._(status: status, data: _data?.build() as BuiltList<Meal>);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetAllMeals200Response',
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
