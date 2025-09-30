//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/get_sales_dashboard200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sales_dashboard200_response.g.dart';

/// GetSalesDashboard200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetSalesDashboard200Response implements Built<GetSalesDashboard200Response, GetSalesDashboard200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  GetSalesDashboard200ResponseData? get data;

  GetSalesDashboard200Response._();

  factory GetSalesDashboard200Response([void updates(GetSalesDashboard200ResponseBuilder b)]) = _$GetSalesDashboard200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSalesDashboard200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSalesDashboard200Response> get serializer => _$GetSalesDashboard200ResponseSerializer();
}

class _$GetSalesDashboard200ResponseSerializer implements PrimitiveSerializer<GetSalesDashboard200Response> {
  @override
  final Iterable<Type> types = const [GetSalesDashboard200Response, _$GetSalesDashboard200Response];

  @override
  final String wireName = r'GetSalesDashboard200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSalesDashboard200Response object, {
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
        specifiedType: const FullType(GetSalesDashboard200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSalesDashboard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSalesDashboard200ResponseBuilder result,
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
            specifiedType: const FullType(GetSalesDashboard200ResponseData),
          ) as GetSalesDashboard200ResponseData;
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
  GetSalesDashboard200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSalesDashboard200ResponseBuilder();
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

