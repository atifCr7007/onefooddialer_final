//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_customer_dashboard200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customer_dashboard200_response.g.dart';

/// GetCustomerDashboard200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetCustomerDashboard200Response implements Built<GetCustomerDashboard200Response, GetCustomerDashboard200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  GetCustomerDashboard200ResponseData? get data;

  GetCustomerDashboard200Response._();

  factory GetCustomerDashboard200Response([void updates(GetCustomerDashboard200ResponseBuilder b)]) = _$GetCustomerDashboard200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomerDashboard200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomerDashboard200Response> get serializer => _$GetCustomerDashboard200ResponseSerializer();
}

class _$GetCustomerDashboard200ResponseSerializer implements PrimitiveSerializer<GetCustomerDashboard200Response> {
  @override
  final Iterable<Type> types = const [GetCustomerDashboard200Response, _$GetCustomerDashboard200Response];

  @override
  final String wireName = r'GetCustomerDashboard200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomerDashboard200Response object, {
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
        specifiedType: const FullType(GetCustomerDashboard200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomerDashboard200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomerDashboard200ResponseBuilder result,
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
            specifiedType: const FullType(GetCustomerDashboard200ResponseData),
          ) as GetCustomerDashboard200ResponseData;
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
  GetCustomerDashboard200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomerDashboard200ResponseBuilder();
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

