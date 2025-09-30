// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChartDataTypeEnum _$chartDataTypeEnum_line = const ChartDataTypeEnum._(
  'line',
);
const ChartDataTypeEnum _$chartDataTypeEnum_bar = const ChartDataTypeEnum._(
  'bar',
);
const ChartDataTypeEnum _$chartDataTypeEnum_pie = const ChartDataTypeEnum._(
  'pie',
);
const ChartDataTypeEnum _$chartDataTypeEnum_doughnut =
    const ChartDataTypeEnum._('doughnut');
const ChartDataTypeEnum _$chartDataTypeEnum_area = const ChartDataTypeEnum._(
  'area',
);
const ChartDataTypeEnum _$chartDataTypeEnum_scatter = const ChartDataTypeEnum._(
  'scatter',
);
const ChartDataTypeEnum _$chartDataTypeEnum_unknownDefaultOpenApi =
    const ChartDataTypeEnum._('unknownDefaultOpenApi');

ChartDataTypeEnum _$chartDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'line':
      return _$chartDataTypeEnum_line;
    case 'bar':
      return _$chartDataTypeEnum_bar;
    case 'pie':
      return _$chartDataTypeEnum_pie;
    case 'doughnut':
      return _$chartDataTypeEnum_doughnut;
    case 'area':
      return _$chartDataTypeEnum_area;
    case 'scatter':
      return _$chartDataTypeEnum_scatter;
    case 'unknownDefaultOpenApi':
      return _$chartDataTypeEnum_unknownDefaultOpenApi;
    default:
      return _$chartDataTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChartDataTypeEnum> _$chartDataTypeEnumValues =
    BuiltSet<ChartDataTypeEnum>(const <ChartDataTypeEnum>[
      _$chartDataTypeEnum_line,
      _$chartDataTypeEnum_bar,
      _$chartDataTypeEnum_pie,
      _$chartDataTypeEnum_doughnut,
      _$chartDataTypeEnum_area,
      _$chartDataTypeEnum_scatter,
      _$chartDataTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ChartDataTypeEnum> _$chartDataTypeEnumSerializer =
    _$ChartDataTypeEnumSerializer();

class _$ChartDataTypeEnumSerializer
    implements PrimitiveSerializer<ChartDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'line': 'line',
    'bar': 'bar',
    'pie': 'pie',
    'doughnut': 'doughnut',
    'area': 'area',
    'scatter': 'scatter',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'line': 'line',
    'bar': 'bar',
    'pie': 'pie',
    'doughnut': 'doughnut',
    'area': 'area',
    'scatter': 'scatter',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChartDataTypeEnum];
  @override
  final String wireName = 'ChartDataTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChartDataTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChartDataTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChartDataTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChartData extends ChartData {
  @override
  final ChartDataTypeEnum? type;
  @override
  final String? title;
  @override
  final Map<String, dynamic>? data;
  @override
  final Map<String, dynamic>? options;

  factory _$ChartData([void Function(ChartDataBuilder)? updates]) =>
      (ChartDataBuilder()..update(updates))._build();

  _$ChartData._({this.type, this.title, this.data, this.options}) : super._();
  @override
  ChartData rebuild(void Function(ChartDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChartDataBuilder toBuilder() => ChartDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChartData &&
        type == other.type &&
        title == other.title &&
        data == other.data &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChartData')
          ..add('type', type)
          ..add('title', title)
          ..add('data', data)
          ..add('options', options))
        .toString();
  }
}

class ChartDataBuilder implements Builder<ChartData, ChartDataBuilder> {
  _$ChartData? _$v;

  ChartDataTypeEnum? _type;
  ChartDataTypeEnum? get type => _$this._type;
  set type(ChartDataTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Map<String, dynamic>? _data;
  Map<String, dynamic>? get data => _$this._data;
  set data(Map<String, dynamic>? data) => _$this._data = data;

  Map<String, dynamic>? _options;
  Map<String, dynamic>? get options => _$this._options;
  set options(Map<String, dynamic>? options) => _$this._options = options;

  ChartDataBuilder() {
    ChartData._defaults(this);
  }

  ChartDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _data = $v.data;
      _options = $v.options;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChartData other) {
    _$v = other as _$ChartData;
  }

  @override
  void update(void Function(ChartDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChartData build() => _build();

  _$ChartData _build() {
    final _$result =
        _$v ??
        _$ChartData._(type: type, title: title, data: data, options: options);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
