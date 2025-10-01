//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:auth_client/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_user200_response_data.g.dart';

/// GetUser200ResponseData
///
/// Properties:
/// * [user] 
@BuiltValue()
abstract class GetUser200ResponseData implements Built<GetUser200ResponseData, GetUser200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'user')
  User? get user;

  GetUser200ResponseData._();

  factory GetUser200ResponseData([void updates(GetUser200ResponseDataBuilder b)]) = _$GetUser200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetUser200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetUser200ResponseData> get serializer => _$GetUser200ResponseDataSerializer();
}

class _$GetUser200ResponseDataSerializer implements PrimitiveSerializer<GetUser200ResponseData> {
  @override
  final Iterable<Type> types = const [GetUser200ResponseData, _$GetUser200ResponseData];

  @override
  final String wireName = r'GetUser200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetUser200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetUser200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetUser200ResponseDataBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetUser200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUser200ResponseDataBuilder();
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

