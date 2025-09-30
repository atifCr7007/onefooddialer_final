//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_item.g.dart';

/// ActivityItem
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [description] 
/// * [userId] 
/// * [userName] 
/// * [timestamp] 
/// * [metadata] - Additional activity-specific data
@BuiltValue()
abstract class ActivityItem implements Built<ActivityItem, ActivityItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  ActivityItemTypeEnum? get type;
  // enum typeEnum {  user_login,  order_created,  kitchen_approved,  system_alert,  };

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'userName')
  String? get userName;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Additional activity-specific data
  @BuiltValueField(wireName: r'metadata')
  Map<String,dynamic>? get metadata;

  ActivityItem._();

  factory ActivityItem([void updates(ActivityItemBuilder b)]) = _$ActivityItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityItem> get serializer => _$ActivityItemSerializer();
}

class _$ActivityItemSerializer implements PrimitiveSerializer<ActivityItem> {
  @override
  final Iterable<Type> types = const [ActivityItem, _$ActivityItem];

  @override
  final String wireName = r'ActivityItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ActivityItemTypeEnum),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivityItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivityItemTypeEnum),
          ) as ActivityItemTypeEnum;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivityItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityItemBuilder();
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

class ActivityItemTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'user_login')
  static const ActivityItemTypeEnum userLogin = _$activityItemTypeEnum_userLogin;
  @BuiltValueEnumConst(wireName: r'order_created')
  static const ActivityItemTypeEnum orderCreated = _$activityItemTypeEnum_orderCreated;
  @BuiltValueEnumConst(wireName: r'kitchen_approved')
  static const ActivityItemTypeEnum kitchenApproved = _$activityItemTypeEnum_kitchenApproved;
  @BuiltValueEnumConst(wireName: r'system_alert')
  static const ActivityItemTypeEnum systemAlert = _$activityItemTypeEnum_systemAlert;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ActivityItemTypeEnum unknownDefaultOpenApi = _$activityItemTypeEnum_unknownDefaultOpenApi;

  static Serializer<ActivityItemTypeEnum> get serializer => _$activityItemTypeEnumSerializer;

  const ActivityItemTypeEnum._(String name): super(name);

  static BuiltSet<ActivityItemTypeEnum> get values => _$activityItemTypeEnumValues;
  static ActivityItemTypeEnum valueOf(String name) => _$activityItemTypeEnumValueOf(name);
}

