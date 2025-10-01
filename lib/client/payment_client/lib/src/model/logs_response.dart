//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:payment_client/src/model/payment_log.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logs_response.g.dart';

/// LogsResponse
///
/// Properties:
/// * [success] - Whether the request was successful
/// * [data] - Payment logs
@BuiltValue()
abstract class LogsResponse implements Built<LogsResponse, LogsResponseBuilder> {
  /// Whether the request was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Payment logs
  @BuiltValueField(wireName: r'data')
  BuiltList<PaymentLog>? get data;

  LogsResponse._();

  factory LogsResponse([void updates(LogsResponseBuilder b)]) = _$LogsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogsResponse> get serializer => _$LogsResponseSerializer();
}

class _$LogsResponseSerializer implements PrimitiveSerializer<LogsResponse> {
  @override
  final Iterable<Type> types = const [LogsResponse, _$LogsResponse];

  @override
  final String wireName = r'LogsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogsResponse object, {
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
        specifiedType: const FullType(BuiltList, [FullType(PaymentLog)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LogsResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(PaymentLog)]),
          ) as BuiltList<PaymentLog>;
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
  LogsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogsResponseBuilder();
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

