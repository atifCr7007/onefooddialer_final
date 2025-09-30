//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:analytics_client/src/model/common_extra.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_food_dashboard200_response_data.g.dart';

/// GetFoodDashboard200ResponseData
///
/// Properties:
/// * [years] 
/// * [months] 
/// * [menus] 
/// * [commonExtras] 
@BuiltValue()
abstract class GetFoodDashboard200ResponseData implements Built<GetFoodDashboard200ResponseData, GetFoodDashboard200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'years')
  BuiltList<int>? get years;

  @BuiltValueField(wireName: r'months')
  BuiltMap<String, String>? get months;

  @BuiltValueField(wireName: r'menus')
  BuiltList<String>? get menus;

  @BuiltValueField(wireName: r'common_extras')
  BuiltList<CommonExtra>? get commonExtras;

  GetFoodDashboard200ResponseData._();

  factory GetFoodDashboard200ResponseData([void updates(GetFoodDashboard200ResponseDataBuilder b)]) = _$GetFoodDashboard200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFoodDashboard200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFoodDashboard200ResponseData> get serializer => _$GetFoodDashboard200ResponseDataSerializer();
}

class _$GetFoodDashboard200ResponseDataSerializer implements PrimitiveSerializer<GetFoodDashboard200ResponseData> {
  @override
  final Iterable<Type> types = const [GetFoodDashboard200ResponseData, _$GetFoodDashboard200ResponseData];

  @override
  final String wireName = r'GetFoodDashboard200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFoodDashboard200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.years != null) {
      yield r'years';
      yield serializers.serialize(
        object.years,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.months != null) {
      yield r'months';
      yield serializers.serialize(
        object.months,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.menus != null) {
      yield r'menus';
      yield serializers.serialize(
        object.menus,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.commonExtras != null) {
      yield r'common_extras';
      yield serializers.serialize(
        object.commonExtras,
        specifiedType: const FullType(BuiltList, [FullType(CommonExtra)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFoodDashboard200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetFoodDashboard200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'years':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.years.replace(valueDes);
          break;
        case r'months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.months.replace(valueDes);
          break;
        case r'menus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.menus.replace(valueDes);
          break;
        case r'common_extras':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CommonExtra)]),
          ) as BuiltList<CommonExtra>;
          result.commonExtras.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFoodDashboard200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFoodDashboard200ResponseDataBuilder();
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

