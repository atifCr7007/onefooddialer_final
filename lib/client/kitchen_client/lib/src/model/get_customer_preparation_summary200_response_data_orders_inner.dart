//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customer_preparation_summary200_response_data_orders_inner.g.dart';

/// GetCustomerPreparationSummary200ResponseDataOrdersInner
///
/// Properties:
/// * [orderId] 
/// * [isFullyPrepared] 
/// * [preparationPercentage] 
/// * [status] 
@BuiltValue()
abstract class GetCustomerPreparationSummary200ResponseDataOrdersInner implements Built<GetCustomerPreparationSummary200ResponseDataOrdersInner, GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder> {
  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  @BuiltValueField(wireName: r'is_fully_prepared')
  bool? get isFullyPrepared;

  @BuiltValueField(wireName: r'preparation_percentage')
  double? get preparationPercentage;

  @BuiltValueField(wireName: r'status')
  String? get status;

  GetCustomerPreparationSummary200ResponseDataOrdersInner._();

  factory GetCustomerPreparationSummary200ResponseDataOrdersInner([void updates(GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder b)]) = _$GetCustomerPreparationSummary200ResponseDataOrdersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomerPreparationSummary200ResponseDataOrdersInner> get serializer => _$GetCustomerPreparationSummary200ResponseDataOrdersInnerSerializer();
}

class _$GetCustomerPreparationSummary200ResponseDataOrdersInnerSerializer implements PrimitiveSerializer<GetCustomerPreparationSummary200ResponseDataOrdersInner> {
  @override
  final Iterable<Type> types = const [GetCustomerPreparationSummary200ResponseDataOrdersInner, _$GetCustomerPreparationSummary200ResponseDataOrdersInner];

  @override
  final String wireName = r'GetCustomerPreparationSummary200ResponseDataOrdersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomerPreparationSummary200ResponseDataOrdersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
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
    GetCustomerPreparationSummary200ResponseDataOrdersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
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
  GetCustomerPreparationSummary200ResponseDataOrdersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder();
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

