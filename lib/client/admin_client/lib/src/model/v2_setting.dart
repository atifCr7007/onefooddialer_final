//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_setting.g.dart';

/// V2Setting
///
/// Properties:
/// * [settingKey] 
/// * [settingValue] 
/// * [settingGroup] 
/// * [settingType] 
/// * [isSystem] 
/// * [isPublic] 
/// * [description] 
@BuiltValue()
abstract class V2Setting implements Built<V2Setting, V2SettingBuilder> {
  @BuiltValueField(wireName: r'setting_key')
  String? get settingKey;

  @BuiltValueField(wireName: r'setting_value')
  String? get settingValue;

  @BuiltValueField(wireName: r'setting_group')
  String? get settingGroup;

  @BuiltValueField(wireName: r'setting_type')
  String? get settingType;

  @BuiltValueField(wireName: r'is_system')
  bool? get isSystem;

  @BuiltValueField(wireName: r'is_public')
  bool? get isPublic;

  @BuiltValueField(wireName: r'description')
  String? get description;

  V2Setting._();

  factory V2Setting([void updates(V2SettingBuilder b)]) = _$V2Setting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2SettingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2Setting> get serializer => _$V2SettingSerializer();
}

class _$V2SettingSerializer implements PrimitiveSerializer<V2Setting> {
  @override
  final Iterable<Type> types = const [V2Setting, _$V2Setting];

  @override
  final String wireName = r'V2Setting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2Setting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.settingKey != null) {
      yield r'setting_key';
      yield serializers.serialize(
        object.settingKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.settingValue != null) {
      yield r'setting_value';
      yield serializers.serialize(
        object.settingValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.settingGroup != null) {
      yield r'setting_group';
      yield serializers.serialize(
        object.settingGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.settingType != null) {
      yield r'setting_type';
      yield serializers.serialize(
        object.settingType,
        specifiedType: const FullType(String),
      );
    }
    if (object.isSystem != null) {
      yield r'is_system';
      yield serializers.serialize(
        object.isSystem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPublic != null) {
      yield r'is_public';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2Setting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2SettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setting_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.settingKey = valueDes;
          break;
        case r'setting_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.settingValue = valueDes;
          break;
        case r'setting_group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.settingGroup = valueDes;
          break;
        case r'setting_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.settingType = valueDes;
          break;
        case r'is_system':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSystem = valueDes;
          break;
        case r'is_public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2Setting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2SettingBuilder();
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

