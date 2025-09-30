//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/invoice_statistics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_statistics_get200_response.g.dart';

/// InvoicesStatisticsGet200Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class InvoicesStatisticsGet200Response implements Built<InvoicesStatisticsGet200Response, InvoicesStatisticsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'data')
  InvoiceStatistics get data;

  InvoicesStatisticsGet200Response._();

  factory InvoicesStatisticsGet200Response([void updates(InvoicesStatisticsGet200ResponseBuilder b)]) = _$InvoicesStatisticsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesStatisticsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesStatisticsGet200Response> get serializer => _$InvoicesStatisticsGet200ResponseSerializer();
}

class _$InvoicesStatisticsGet200ResponseSerializer implements PrimitiveSerializer<InvoicesStatisticsGet200Response> {
  @override
  final Iterable<Type> types = const [InvoicesStatisticsGet200Response, _$InvoicesStatisticsGet200Response];

  @override
  final String wireName = r'InvoicesStatisticsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesStatisticsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(InvoiceStatistics),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesStatisticsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesStatisticsGet200ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvoiceStatistics),
          ) as InvoiceStatistics;
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
  InvoicesStatisticsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesStatisticsGet200ResponseBuilder();
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

