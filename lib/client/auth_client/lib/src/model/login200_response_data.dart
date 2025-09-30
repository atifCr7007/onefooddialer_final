//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login200_response_data.g.dart';

/// Login200ResponseData
///
/// Properties:
/// * [user] 
/// * [token] - Authentication token
/// * [tokenType] 
@BuiltValue()
abstract class Login200ResponseData implements Built<Login200ResponseData, Login200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'user')
  User? get user;

  /// Authentication token
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'token_type')
  String? get tokenType;

  Login200ResponseData._();

  factory Login200ResponseData([void updates(Login200ResponseDataBuilder b)]) = _$Login200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Login200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Login200ResponseData> get serializer => _$Login200ResponseDataSerializer();
}

class _$Login200ResponseDataSerializer implements PrimitiveSerializer<Login200ResponseData> {
  @override
  final Iterable<Type> types = const [Login200ResponseData, _$Login200ResponseData];

  @override
  final String wireName = r'Login200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Login200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenType != null) {
      yield r'token_type';
      yield serializers.serialize(
        object.tokenType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Login200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Login200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'token_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Login200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Login200ResponseDataBuilder();
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

