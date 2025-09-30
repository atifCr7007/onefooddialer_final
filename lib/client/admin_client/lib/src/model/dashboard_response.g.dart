// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DashboardResponseStatusEnum _$dashboardResponseStatusEnum_success =
    const DashboardResponseStatusEnum._('success');
const DashboardResponseStatusEnum
_$dashboardResponseStatusEnum_unknownDefaultOpenApi =
    const DashboardResponseStatusEnum._('unknownDefaultOpenApi');

DashboardResponseStatusEnum _$dashboardResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$dashboardResponseStatusEnum_success;
    case 'unknownDefaultOpenApi':
      return _$dashboardResponseStatusEnum_unknownDefaultOpenApi;
    default:
      return _$dashboardResponseStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DashboardResponseStatusEnum>
_$dashboardResponseStatusEnumValues =
    BuiltSet<DashboardResponseStatusEnum>(const <DashboardResponseStatusEnum>[
      _$dashboardResponseStatusEnum_success,
      _$dashboardResponseStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<DashboardResponseStatusEnum>
_$dashboardResponseStatusEnumSerializer =
    _$DashboardResponseStatusEnumSerializer();

class _$DashboardResponseStatusEnumSerializer
    implements PrimitiveSerializer<DashboardResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DashboardResponseStatusEnum];
  @override
  final String wireName = 'DashboardResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    DashboardResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DashboardResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DashboardResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DashboardResponse extends DashboardResponse {
  @override
  final DashboardResponseStatusEnum? status;
  @override
  final DashboardResponseData? data;

  factory _$DashboardResponse([
    void Function(DashboardResponseBuilder)? updates,
  ]) => (DashboardResponseBuilder()..update(updates))._build();

  _$DashboardResponse._({this.status, this.data}) : super._();
  @override
  DashboardResponse rebuild(void Function(DashboardResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardResponseBuilder toBuilder() =>
      DashboardResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardResponse &&
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
    return (newBuiltValueToStringHelper(r'DashboardResponse')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class DashboardResponseBuilder
    implements Builder<DashboardResponse, DashboardResponseBuilder> {
  _$DashboardResponse? _$v;

  DashboardResponseStatusEnum? _status;
  DashboardResponseStatusEnum? get status => _$this._status;
  set status(DashboardResponseStatusEnum? status) => _$this._status = status;

  DashboardResponseDataBuilder? _data;
  DashboardResponseDataBuilder get data =>
      _$this._data ??= DashboardResponseDataBuilder();
  set data(DashboardResponseDataBuilder? data) => _$this._data = data;

  DashboardResponseBuilder() {
    DashboardResponse._defaults(this);
  }

  DashboardResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardResponse other) {
    _$v = other as _$DashboardResponse;
  }

  @override
  void update(void Function(DashboardResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardResponse build() => _build();

  _$DashboardResponse _build() {
    _$DashboardResponse _$result;
    try {
      _$result =
          _$v ?? _$DashboardResponse._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardResponse',
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
