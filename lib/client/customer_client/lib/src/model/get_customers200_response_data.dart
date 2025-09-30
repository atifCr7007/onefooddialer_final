//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:customer_client/src/model/customer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_customers200_response_data.g.dart';

/// GetCustomers200ResponseData
///
/// Properties:
/// * [data] 
/// * [currentPage] 
/// * [perPage] 
/// * [total] 
@BuiltValue()
abstract class GetCustomers200ResponseData implements Built<GetCustomers200ResponseData, GetCustomers200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Customer>? get data;

  @BuiltValueField(wireName: r'current_page')
  int? get currentPage;

  @BuiltValueField(wireName: r'per_page')
  int? get perPage;

  @BuiltValueField(wireName: r'total')
  int? get total;

  GetCustomers200ResponseData._();

  factory GetCustomers200ResponseData([void updates(GetCustomers200ResponseDataBuilder b)]) = _$GetCustomers200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCustomers200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCustomers200ResponseData> get serializer => _$GetCustomers200ResponseDataSerializer();
}

class _$GetCustomers200ResponseDataSerializer implements PrimitiveSerializer<GetCustomers200ResponseData> {
  @override
  final Iterable<Type> types = const [GetCustomers200ResponseData, _$GetCustomers200ResponseData];

  @override
  final String wireName = r'GetCustomers200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCustomers200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Customer)]),
      );
    }
    if (object.currentPage != null) {
      yield r'current_page';
      yield serializers.serialize(
        object.currentPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.perPage != null) {
      yield r'per_page';
      yield serializers.serialize(
        object.perPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCustomers200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCustomers200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Customer)]),
          ) as BuiltList<Customer>;
          result.data.replace(valueDes);
          break;
        case r'current_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentPage = valueDes;
          break;
        case r'per_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.perPage = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCustomers200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomers200ResponseDataBuilder();
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

