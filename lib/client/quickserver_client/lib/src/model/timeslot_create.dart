//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeslot_create.g.dart';

/// TimeslotCreate
///
/// Properties:
/// * [companyId] 
/// * [unitId] 
/// * [starttime] 
/// * [endtime] 
/// * [day] 
/// * [menuType] 
/// * [kitchen] 
/// * [status] 
@BuiltValue()
abstract class TimeslotCreate implements Built<TimeslotCreate, TimeslotCreateBuilder> {
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'starttime')
  String get starttime;

  @BuiltValueField(wireName: r'endtime')
  String get endtime;

  @BuiltValueField(wireName: r'day')
  String get day;

  @BuiltValueField(wireName: r'menu_type')
  String get menuType;

  @BuiltValueField(wireName: r'kitchen')
  String get kitchen;

  @BuiltValueField(wireName: r'status')
  int? get status;

  TimeslotCreate._();

  factory TimeslotCreate([void updates(TimeslotCreateBuilder b)]) = _$TimeslotCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeslotCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeslotCreate> get serializer => _$TimeslotCreateSerializer();
}

class _$TimeslotCreateSerializer implements PrimitiveSerializer<TimeslotCreate> {
  @override
  final Iterable<Type> types = const [TimeslotCreate, _$TimeslotCreate];

  @override
  final String wireName = r'TimeslotCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeslotCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.companyId != null) {
      yield r'company_id';
      yield serializers.serialize(
        object.companyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitId != null) {
      yield r'unit_id';
      yield serializers.serialize(
        object.unitId,
        specifiedType: const FullType(int),
      );
    }
    yield r'starttime';
    yield serializers.serialize(
      object.starttime,
      specifiedType: const FullType(String),
    );
    yield r'endtime';
    yield serializers.serialize(
      object.endtime,
      specifiedType: const FullType(String),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(String),
    );
    yield r'menu_type';
    yield serializers.serialize(
      object.menuType,
      specifiedType: const FullType(String),
    );
    yield r'kitchen';
    yield serializers.serialize(
      object.kitchen,
      specifiedType: const FullType(String),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeslotCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeslotCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'company_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.companyId = valueDes;
          break;
        case r'unit_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unitId = valueDes;
          break;
        case r'starttime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.starttime = valueDes;
          break;
        case r'endtime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endtime = valueDes;
          break;
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.day = valueDes;
          break;
        case r'menu_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.menuType = valueDes;
          break;
        case r'kitchen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kitchen = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  TimeslotCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeslotCreateBuilder();
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

