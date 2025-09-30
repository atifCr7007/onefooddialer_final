// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_prepared_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePreparedRequest extends UpdatePreparedRequest {
  @override
  final String? menu;
  @override
  final Date? date;
  @override
  final int? screen;

  factory _$UpdatePreparedRequest(
          [void Function(UpdatePreparedRequestBuilder)? updates]) =>
      (UpdatePreparedRequestBuilder()..update(updates))._build();

  _$UpdatePreparedRequest._({this.menu, this.date, this.screen}) : super._();
  @override
  UpdatePreparedRequest rebuild(
          void Function(UpdatePreparedRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePreparedRequestBuilder toBuilder() =>
      UpdatePreparedRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePreparedRequest &&
        menu == other.menu &&
        date == other.date &&
        screen == other.screen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, screen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePreparedRequest')
          ..add('menu', menu)
          ..add('date', date)
          ..add('screen', screen))
        .toString();
  }
}

class UpdatePreparedRequestBuilder
    implements Builder<UpdatePreparedRequest, UpdatePreparedRequestBuilder> {
  _$UpdatePreparedRequest? _$v;

  String? _menu;
  String? get menu => _$this._menu;
  set menu(String? menu) => _$this._menu = menu;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _screen;
  int? get screen => _$this._screen;
  set screen(int? screen) => _$this._screen = screen;

  UpdatePreparedRequestBuilder() {
    UpdatePreparedRequest._defaults(this);
  }

  UpdatePreparedRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _menu = $v.menu;
      _date = $v.date;
      _screen = $v.screen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePreparedRequest other) {
    _$v = other as _$UpdatePreparedRequest;
  }

  @override
  void update(void Function(UpdatePreparedRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePreparedRequest build() => _build();

  _$UpdatePreparedRequest _build() {
    final _$result = _$v ??
        _$UpdatePreparedRequest._(
          menu: menu,
          date: date,
          screen: screen,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
