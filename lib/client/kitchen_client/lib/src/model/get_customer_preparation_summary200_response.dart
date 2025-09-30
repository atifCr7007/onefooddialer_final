//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_customer_preparation_summary200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customer_preparation_summary200_response.g.dart';

/// GetCustomerPreparationSummary200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetCustomerPreparationSummary200Response implements Built<GetCustomerPreparationSummary200Response, GetCustomerPreparationSummary200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  GetCustomerPreparationSummary200ResponseData? get data;

  GetCustomerPreparationSummary200Response._();

  factory GetCustomerPreparationSummary200Response([void updates(GetCustomerPreparationSummary200ResponseBuilder b)]) = _$GetCustomerPreparationSummary200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomerPreparationSummary200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomerPreparationSummary200Response> get serializer => _$GetCustomerPreparationSummary200ResponseSerializer();
}

class _$GetCustomerPreparationSummary200ResponseSerializer implements PrimitiveSerializer<GetCustomerPreparationSummary200Response> {
  @override
  final Iterable<Type> types = const [GetCustomerPreparationSummary200Response, _$GetCustomerPreparationSummary200Response];

  @override
  final String wireName = r'GetCustomerPreparationSummary200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomerPreparationSummary200Response object, {
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
        specifiedType: const FullType(GetCustomerPreparationSummary200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomerPreparationSummary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomerPreparationSummary200ResponseBuilder result,
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
            specifiedType: const FullType(GetCustomerPreparationSummary200ResponseData),
          ) as GetCustomerPreparationSummary200ResponseData;
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
  GetCustomerPreparationSummary200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomerPreparationSummary200ResponseBuilder();
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

