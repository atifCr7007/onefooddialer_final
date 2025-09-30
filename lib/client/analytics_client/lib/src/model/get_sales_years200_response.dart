//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sales_years200_response.g.dart';

/// GetSalesYears200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetSalesYears200Response implements Built<GetSalesYears200Response, GetSalesYears200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<int>? get data;

  GetSalesYears200Response._();

  factory GetSalesYears200Response([void updates(GetSalesYears200ResponseBuilder b)]) = _$GetSalesYears200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSalesYears200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSalesYears200Response> get serializer => _$GetSalesYears200ResponseSerializer();
}

class _$GetSalesYears200ResponseSerializer implements PrimitiveSerializer<GetSalesYears200Response> {
  @override
  final Iterable<Type> types = const [GetSalesYears200Response, _$GetSalesYears200Response];

  @override
  final String wireName = r'GetSalesYears200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSalesYears200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSalesYears200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSalesYears200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
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
  GetSalesYears200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSalesYears200ResponseBuilder();
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

