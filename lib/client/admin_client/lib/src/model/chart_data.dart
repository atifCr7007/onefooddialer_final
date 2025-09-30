//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chart_data.g.dart';

/// ChartData
///
/// Properties:
/// * [type] - Chart visualization type
/// * [title] - Chart title
/// * [data] - Chart data in format specific to chart type
/// * [options] - Chart configuration options
@BuiltValue()
abstract class ChartData implements Built<ChartData, ChartDataBuilder> {
  /// Chart visualization type
  @BuiltValueField(wireName: r'type')
  ChartDataTypeEnum? get type;
  // enum typeEnum {  line,  bar,  pie,  doughnut,  area,  scatter,  };

  /// Chart title
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Chart data in format specific to chart type
  @BuiltValueField(wireName: r'data')
  Map<String,dynamic>? get data;

  /// Chart configuration options
  @BuiltValueField(wireName: r'options')
  Map<String,dynamic>? get options;

  ChartData._();

  factory ChartData([void updates(ChartDataBuilder b)]) = _$ChartData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChartDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChartData> get serializer => _$ChartDataSerializer();
}

class _$ChartDataSerializer implements PrimitiveSerializer<ChartData> {
  @override
  final Iterable<Type> types = const [ChartData, _$ChartData];

  @override
  final String wireName = r'ChartData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChartData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ChartDataTypeEnum),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChartData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChartDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChartDataTypeEnum),
          ) as ChartDataTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.data = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.options = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChartData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChartDataBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ChartDataTypeEnum extends EnumClass {

  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'line')
  static const ChartDataTypeEnum line = _$chartDataTypeEnum_line;
  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'bar')
  static const ChartDataTypeEnum bar = _$chartDataTypeEnum_bar;
  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'pie')
  static const ChartDataTypeEnum pie = _$chartDataTypeEnum_pie;
  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'doughnut')
  static const ChartDataTypeEnum doughnut = _$chartDataTypeEnum_doughnut;
  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'area')
  static const ChartDataTypeEnum area = _$chartDataTypeEnum_area;
  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'scatter')
  static const ChartDataTypeEnum scatter = _$chartDataTypeEnum_scatter;
  /// Chart visualization type
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChartDataTypeEnum unknownDefaultOpenApi = _$chartDataTypeEnum_unknownDefaultOpenApi;

  static Serializer<ChartDataTypeEnum> get serializer => _$chartDataTypeEnumSerializer;

  const ChartDataTypeEnum._(String name): super(name);

  static BuiltSet<ChartDataTypeEnum> get values => _$chartDataTypeEnumValues;
  static ChartDataTypeEnum valueOf(String name) => _$chartDataTypeEnumValueOf(name);
}

