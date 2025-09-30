//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_extra.g.dart';

/// CommonExtra
///
/// Properties:
/// * [meal] 
/// * [extra] 
/// * [count] 
@BuiltValue()
abstract class CommonExtra implements Built<CommonExtra, CommonExtraBuilder> {
  @BuiltValueField(wireName: r'meal')
  String? get meal;

  @BuiltValueField(wireName: r'extra')
  String? get extra;

  @BuiltValueField(wireName: r'count')
  int? get count;

  CommonExtra._();

  factory CommonExtra([void updates(CommonExtraBuilder b)]) = _$CommonExtra;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommonExtraBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommonExtra> get serializer => _$CommonExtraSerializer();
}

class _$CommonExtraSerializer implements PrimitiveSerializer<CommonExtra> {
  @override
  final Iterable<Type> types = const [CommonExtra, _$CommonExtra];

  @override
  final String wireName = r'CommonExtra';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommonExtra object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meal != null) {
      yield r'meal';
      yield serializers.serialize(
        object.meal,
        specifiedType: const FullType(String),
      );
    }
    if (object.extra != null) {
      yield r'extra';
      yield serializers.serialize(
        object.extra,
        specifiedType: const FullType(String),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommonExtra object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CommonExtraBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.meal = valueDes;
          break;
        case r'extra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.extra = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommonExtra deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonExtraBuilder();
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

