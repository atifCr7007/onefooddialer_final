//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeslot.g.dart';

/// Timeslot
///
/// Properties:
/// * [id] 
/// * [companyId] 
/// * [unitId] 
/// * [starttime] 
/// * [endtime] 
/// * [day] 
/// * [menuType] 
/// * [kitchen] 
/// * [status] 
/// * [formattedStartTime] 
/// * [formattedEndTime] 
/// * [displaySlot] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Timeslot implements Built<Timeslot, TimeslotBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'starttime')
  String? get starttime;

  @BuiltValueField(wireName: r'endtime')
  String? get endtime;

  @BuiltValueField(wireName: r'day')
  String? get day;

  @BuiltValueField(wireName: r'menu_type')
  String? get menuType;

  @BuiltValueField(wireName: r'kitchen')
  String? get kitchen;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'formatted_start_time')
  String? get formattedStartTime;

  @BuiltValueField(wireName: r'formatted_end_time')
  String? get formattedEndTime;

  @BuiltValueField(wireName: r'display_slot')
  String? get displaySlot;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  Timeslot._();

  factory Timeslot([void updates(TimeslotBuilder b)]) = _$Timeslot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeslotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Timeslot> get serializer => _$TimeslotSerializer();
}

class _$TimeslotSerializer implements PrimitiveSerializer<Timeslot> {
  @override
  final Iterable<Type> types = const [Timeslot, _$Timeslot];

  @override
  final String wireName = r'Timeslot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Timeslot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
    if (object.starttime != null) {
      yield r'starttime';
      yield serializers.serialize(
        object.starttime,
        specifiedType: const FullType(String),
      );
    }
    if (object.endtime != null) {
      yield r'endtime';
      yield serializers.serialize(
        object.endtime,
        specifiedType: const FullType(String),
      );
    }
    if (object.day != null) {
      yield r'day';
      yield serializers.serialize(
        object.day,
        specifiedType: const FullType(String),
      );
    }
    if (object.menuType != null) {
      yield r'menu_type';
      yield serializers.serialize(
        object.menuType,
        specifiedType: const FullType(String),
      );
    }
    if (object.kitchen != null) {
      yield r'kitchen';
      yield serializers.serialize(
        object.kitchen,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.formattedStartTime != null) {
      yield r'formatted_start_time';
      yield serializers.serialize(
        object.formattedStartTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.formattedEndTime != null) {
      yield r'formatted_end_time';
      yield serializers.serialize(
        object.formattedEndTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.displaySlot != null) {
      yield r'display_slot';
      yield serializers.serialize(
        object.displaySlot,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Timeslot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeslotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
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
        case r'formatted_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formattedStartTime = valueDes;
          break;
        case r'formatted_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formattedEndTime = valueDes;
          break;
        case r'display_slot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displaySlot = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Timeslot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeslotBuilder();
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

