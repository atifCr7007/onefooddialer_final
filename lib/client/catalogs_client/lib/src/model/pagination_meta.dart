//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pagination_meta.g.dart';

/// PaginationMeta
///
/// Properties:
/// * [currentPage] 
/// * [lastPage] 
/// * [perPage] 
/// * [total] 
@BuiltValue()
abstract class PaginationMeta implements Built<PaginationMeta, PaginationMetaBuilder> {
  @BuiltValueField(wireName: r'current_page')
  int? get currentPage;

  @BuiltValueField(wireName: r'last_page')
  int? get lastPage;

  @BuiltValueField(wireName: r'per_page')
  int? get perPage;

  @BuiltValueField(wireName: r'total')
  int? get total;

  PaginationMeta._();

  factory PaginationMeta([void updates(PaginationMetaBuilder b)]) = _$PaginationMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginationMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginationMeta> get serializer => _$PaginationMetaSerializer();
}

class _$PaginationMetaSerializer implements PrimitiveSerializer<PaginationMeta> {
  @override
  final Iterable<Type> types = const [PaginationMeta, _$PaginationMeta];

  @override
  final String wireName = r'PaginationMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginationMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentPage != null) {
      yield r'current_page';
      yield serializers.serialize(
        object.currentPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastPage != null) {
      yield r'last_page';
      yield serializers.serialize(
        object.lastPage,
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
    PaginationMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginationMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  PaginationMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginationMetaBuilder();
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

