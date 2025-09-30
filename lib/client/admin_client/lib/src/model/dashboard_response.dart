//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:admin_client/src/model/dashboard_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_response.g.dart';

/// DashboardResponse
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class DashboardResponse implements Built<DashboardResponse, DashboardResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  DashboardResponseStatusEnum? get status;
  // enum statusEnum {  success,  };

  @BuiltValueField(wireName: r'data')
  DashboardResponseData? get data;

  DashboardResponse._();

  factory DashboardResponse([void updates(DashboardResponseBuilder b)]) = _$DashboardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardResponse> get serializer => _$DashboardResponseSerializer();
}

class _$DashboardResponseSerializer implements PrimitiveSerializer<DashboardResponse> {
  @override
  final Iterable<Type> types = const [DashboardResponse, _$DashboardResponse];

  @override
  final String wireName = r'DashboardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(DashboardResponseStatusEnum),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(DashboardResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DashboardResponseStatusEnum),
          ) as DashboardResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DashboardResponseData),
          ) as DashboardResponseData;
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
  DashboardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardResponseBuilder();
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

class DashboardResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'success')
  static const DashboardResponseStatusEnum success = _$dashboardResponseStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DashboardResponseStatusEnum unknownDefaultOpenApi = _$dashboardResponseStatusEnum_unknownDefaultOpenApi;

  static Serializer<DashboardResponseStatusEnum> get serializer => _$dashboardResponseStatusEnumSerializer;

  const DashboardResponseStatusEnum._(String name): super(name);

  static BuiltSet<DashboardResponseStatusEnum> get values => _$dashboardResponseStatusEnumValues;
  static DashboardResponseStatusEnum valueOf(String name) => _$dashboardResponseStatusEnumValueOf(name);
}

