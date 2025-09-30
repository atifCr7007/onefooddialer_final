//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/invoice.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoices_get200_response_data.g.dart';

/// InvoicesGet200ResponseData
///
/// Properties:
/// * [data] 
/// * [currentPage] 
/// * [lastPage] 
/// * [perPage] 
/// * [total] 
@BuiltValue()
abstract class InvoicesGet200ResponseData implements Built<InvoicesGet200ResponseData, InvoicesGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Invoice> get data;

  @BuiltValueField(wireName: r'current_page')
  int get currentPage;

  @BuiltValueField(wireName: r'last_page')
  int get lastPage;

  @BuiltValueField(wireName: r'per_page')
  int get perPage;

  @BuiltValueField(wireName: r'total')
  int get total;

  InvoicesGet200ResponseData._();

  factory InvoicesGet200ResponseData([void updates(InvoicesGet200ResponseDataBuilder b)]) = _$InvoicesGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoicesGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoicesGet200ResponseData> get serializer => _$InvoicesGet200ResponseDataSerializer();
}

class _$InvoicesGet200ResponseDataSerializer implements PrimitiveSerializer<InvoicesGet200ResponseData> {
  @override
  final Iterable<Type> types = const [InvoicesGet200ResponseData, _$InvoicesGet200ResponseData];

  @override
  final String wireName = r'InvoicesGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoicesGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Invoice)]),
    );
    yield r'current_page';
    yield serializers.serialize(
      object.currentPage,
      specifiedType: const FullType(int),
    );
    yield r'last_page';
    yield serializers.serialize(
      object.lastPage,
      specifiedType: const FullType(int),
    );
    yield r'per_page';
    yield serializers.serialize(
      object.perPage,
      specifiedType: const FullType(int),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoicesGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoicesGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Invoice)]),
          ) as BuiltList<Invoice>;
          result.data.replace(valueDes);
          break;
        case r'current_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentPage = valueDes;
          break;
        case r'last_page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastPage = valueDes;
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
  InvoicesGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoicesGet200ResponseDataBuilder();
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

