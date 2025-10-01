//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:payment_client/src/model/statistics_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'statistics_response.g.dart';

/// StatisticsResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [data] 
@BuiltValue()
abstract class StatisticsResponse implements Built<StatisticsResponse, StatisticsResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  StatisticsResponseData? get data;

  StatisticsResponse._();

  factory StatisticsResponse([void updates(StatisticsResponseBuilder b)]) = _$StatisticsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatisticsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatisticsResponse> get serializer => _$StatisticsResponseSerializer();
}

class _$StatisticsResponseSerializer implements PrimitiveSerializer<StatisticsResponse> {
  @override
  final Iterable<Type> types = const [StatisticsResponse, _$StatisticsResponse];

  @override
  final String wireName = r'StatisticsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatisticsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(StatisticsResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatisticsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StatisticsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatisticsResponseData),
          ) as StatisticsResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatisticsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatisticsResponseBuilder();
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

