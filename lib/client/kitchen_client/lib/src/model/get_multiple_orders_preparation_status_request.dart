//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_multiple_orders_preparation_status_request.g.dart';

/// GetMultipleOrdersPreparationStatusRequest
///
/// Properties:
/// * [orderIds] 
/// * [date] 
/// * [menu] 
@BuiltValue()
abstract class GetMultipleOrdersPreparationStatusRequest implements Built<GetMultipleOrdersPreparationStatusRequest, GetMultipleOrdersPreparationStatusRequestBuilder> {
  @BuiltValueField(wireName: r'order_ids')
  BuiltList<String> get orderIds;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'menu')
  String? get menu;

  GetMultipleOrdersPreparationStatusRequest._();

  factory GetMultipleOrdersPreparationStatusRequest([void updates(GetMultipleOrdersPreparationStatusRequestBuilder b)]) = _$GetMultipleOrdersPreparationStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMultipleOrdersPreparationStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMultipleOrdersPreparationStatusRequest> get serializer => _$GetMultipleOrdersPreparationStatusRequestSerializer();
}

class _$GetMultipleOrdersPreparationStatusRequestSerializer implements PrimitiveSerializer<GetMultipleOrdersPreparationStatusRequest> {
  @override
  final Iterable<Type> types = const [GetMultipleOrdersPreparationStatusRequest, _$GetMultipleOrdersPreparationStatusRequest];

  @override
  final String wireName = r'GetMultipleOrdersPreparationStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMultipleOrdersPreparationStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_ids';
    yield serializers.serialize(
      object.orderIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GetMultipleOrdersPreparationStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMultipleOrdersPreparationStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.orderIds.replace(valueDes);
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetMultipleOrdersPreparationStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMultipleOrdersPreparationStatusRequestBuilder();
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

