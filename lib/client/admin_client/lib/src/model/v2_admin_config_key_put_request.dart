//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_config_key_put_request.g.dart';

/// V2AdminConfigKeyPutRequest
///
/// Properties:
/// * [value] 
/// * [type] 
/// * [group] 
/// * [isSystem] 
/// * [isPublic] 
/// * [description] 
/// * [companyId] 
/// * [unitId] 
@BuiltValue()
abstract class V2AdminConfigKeyPutRequest implements Built<V2AdminConfigKeyPutRequest, V2AdminConfigKeyPutRequestBuilder> {
  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'type')
  V2AdminConfigKeyPutRequestTypeEnum? get type;
  // enum typeEnum {  string,  boolean,  integer,  float,  json,  array,  };

  @BuiltValueField(wireName: r'group')
  String? get group;

  @BuiltValueField(wireName: r'is_system')
  bool? get isSystem;

  @BuiltValueField(wireName: r'is_public')
  bool? get isPublic;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  V2AdminConfigKeyPutRequest._();

  factory V2AdminConfigKeyPutRequest([void updates(V2AdminConfigKeyPutRequestBuilder b)]) = _$V2AdminConfigKeyPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminConfigKeyPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminConfigKeyPutRequest> get serializer => _$V2AdminConfigKeyPutRequestSerializer();
}

class _$V2AdminConfigKeyPutRequestSerializer implements PrimitiveSerializer<V2AdminConfigKeyPutRequest> {
  @override
  final Iterable<Type> types = const [V2AdminConfigKeyPutRequest, _$V2AdminConfigKeyPutRequest];

  @override
  final String wireName = r'V2AdminConfigKeyPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminConfigKeyPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(V2AdminConfigKeyPutRequestTypeEnum),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminConfigKeyPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminConfigKeyPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V2AdminConfigKeyPutRequestTypeEnum),
          ) as V2AdminConfigKeyPutRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminConfigKeyPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminConfigKeyPutRequestBuilder();
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

class V2AdminConfigKeyPutRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'string')
  static const V2AdminConfigKeyPutRequestTypeEnum string = _$v2AdminConfigKeyPutRequestTypeEnum_string;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const V2AdminConfigKeyPutRequestTypeEnum boolean = _$v2AdminConfigKeyPutRequestTypeEnum_boolean;
  @BuiltValueEnumConst(wireName: r'integer')
  static const V2AdminConfigKeyPutRequestTypeEnum integer = _$v2AdminConfigKeyPutRequestTypeEnum_integer;
  @BuiltValueEnumConst(wireName: r'float')
  static const V2AdminConfigKeyPutRequestTypeEnum float = _$v2AdminConfigKeyPutRequestTypeEnum_float;
  @BuiltValueEnumConst(wireName: r'json')
  static const V2AdminConfigKeyPutRequestTypeEnum json = _$v2AdminConfigKeyPutRequestTypeEnum_json;
  @BuiltValueEnumConst(wireName: r'array')
  static const V2AdminConfigKeyPutRequestTypeEnum array = _$v2AdminConfigKeyPutRequestTypeEnum_array;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const V2AdminConfigKeyPutRequestTypeEnum unknownDefaultOpenApi = _$v2AdminConfigKeyPutRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<V2AdminConfigKeyPutRequestTypeEnum> get serializer => _$v2AdminConfigKeyPutRequestTypeEnumSerializer;

  const V2AdminConfigKeyPutRequestTypeEnum._(String name): super(name);

  static BuiltSet<V2AdminConfigKeyPutRequestTypeEnum> get values => _$v2AdminConfigKeyPutRequestTypeEnumValues;
  static V2AdminConfigKeyPutRequestTypeEnum valueOf(String name) => _$v2AdminConfigKeyPutRequestTypeEnumValueOf(name);
}

