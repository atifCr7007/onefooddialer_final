//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/pagination_meta.dart';
import 'package:admin_client/src/model/admin_user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_response.g.dart';

/// UsersResponse
///
/// Properties:
/// * [status] 
/// * [data] 
/// * [meta] 
@BuiltValue()
abstract class UsersResponse implements Built<UsersResponse, UsersResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  UsersResponseStatusEnum? get status;
  // enum statusEnum {  success,  };

  @BuiltValueField(wireName: r'data')
  BuiltList<AdminUser>? get data;

  @BuiltValueField(wireName: r'meta')
  PaginationMeta? get meta;

  UsersResponse._();

  factory UsersResponse([void updates(UsersResponseBuilder b)]) = _$UsersResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersResponse> get serializer => _$UsersResponseSerializer();
}

class _$UsersResponseSerializer implements PrimitiveSerializer<UsersResponse> {
  @override
  final Iterable<Type> types = const [UsersResponse, _$UsersResponse];

  @override
  final String wireName = r'UsersResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UsersResponseStatusEnum),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(AdminUser)]),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(PaginationMeta),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersResponseStatusEnum),
          ) as UsersResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdminUser)]),
          ) as BuiltList<AdminUser>;
          result.data.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaginationMeta),
          ) as PaginationMeta;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersResponseBuilder();
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

class UsersResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'success')
  static const UsersResponseStatusEnum success = _$usersResponseStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const UsersResponseStatusEnum unknownDefaultOpenApi = _$usersResponseStatusEnum_unknownDefaultOpenApi;

  static Serializer<UsersResponseStatusEnum> get serializer => _$usersResponseStatusEnumSerializer;

  const UsersResponseStatusEnum._(String name): super(name);

  static BuiltSet<UsersResponseStatusEnum> get values => _$usersResponseStatusEnumValues;
  static UsersResponseStatusEnum valueOf(String name) => _$usersResponseStatusEnumValueOf(name);
}

