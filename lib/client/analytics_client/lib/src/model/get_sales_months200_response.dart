//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sales_months200_response.g.dart';

/// GetSalesMonths200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetSalesMonths200Response implements Built<GetSalesMonths200Response, GetSalesMonths200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, String>? get data;

  GetSalesMonths200Response._();

  factory GetSalesMonths200Response([void updates(GetSalesMonths200ResponseBuilder b)]) = _$GetSalesMonths200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSalesMonths200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSalesMonths200Response> get serializer => _$GetSalesMonths200ResponseSerializer();
}

class _$GetSalesMonths200ResponseSerializer implements PrimitiveSerializer<GetSalesMonths200Response> {
  @override
  final Iterable<Type> types = const [GetSalesMonths200Response, _$GetSalesMonths200Response];

  @override
  final String wireName = r'GetSalesMonths200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSalesMonths200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSalesMonths200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSalesMonths200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
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
  GetSalesMonths200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSalesMonths200ResponseBuilder();
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

