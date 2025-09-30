//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kitchen_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_multiple_orders_preparation_status200_response_data_value.g.dart';

/// GetMultipleOrdersPreparationStatus200ResponseDataValue
///
/// Properties:
/// * [date] 
/// * [menu] 
/// * [isFullyPrepared] 
/// * [preparationPercentage] 
/// * [status] 
@BuiltValue()
abstract class GetMultipleOrdersPreparationStatus200ResponseDataValue implements Built<GetMultipleOrdersPreparationStatus200ResponseDataValue, GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder> {
  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'menu')
  String? get menu;

  @BuiltValueField(wireName: r'is_fully_prepared')
  bool? get isFullyPrepared;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  @BuiltValueField(wireName: r'status')
  String? get status;

  GetMultipleOrdersPreparationStatus200ResponseDataValue._();

  factory GetMultipleOrdersPreparationStatus200ResponseDataValue([void updates(GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder b)]) = _$GetMultipleOrdersPreparationStatus200ResponseDataValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMultipleOrdersPreparationStatus200ResponseDataValue> get serializer => _$GetMultipleOrdersPreparationStatus200ResponseDataValueSerializer();
}

class _$GetMultipleOrdersPreparationStatus200ResponseDataValueSerializer implements PrimitiveSerializer<GetMultipleOrdersPreparationStatus200ResponseDataValue> {
  @override
  final Iterable<Type> types = const [GetMultipleOrdersPreparationStatus200ResponseDataValue, _$GetMultipleOrdersPreparationStatus200ResponseDataValue];

  @override
  final String wireName = r'GetMultipleOrdersPreparationStatus200ResponseDataValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMultipleOrdersPreparationStatus200ResponseDataValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.menu != null) {
      yield r'menu';
      yield serializers.serialize(
        object.menu,
        specifiedType: const FullType(String),
      );
    }
    if (object.isFullyPrepared != null) {
      yield r'is_fully_prepared';
      yield serializers.serialize(
        object.isFullyPrepared,
        specifiedType: const FullType(bool),
      );
    }
    if (object.preparationPercentage != null) {
      yield r'preparation_percentage';
      yield serializers.serialize(
        object.preparationPercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMultipleOrdersPreparationStatus200ResponseDataValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.menu = valueDes;
          break;
        case r'is_fully_prepared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFullyPrepared = valueDes;
          break;
        case r'preparation_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.preparationPercentage = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMultipleOrdersPreparationStatus200ResponseDataValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder();
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

