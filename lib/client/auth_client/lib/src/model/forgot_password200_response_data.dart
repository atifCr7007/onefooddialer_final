//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forgot_password200_response_data.g.dart';

/// ForgotPassword200ResponseData
///
/// Properties:
/// * [token] - Reset token (only included in development)
@BuiltValue()
abstract class ForgotPassword200ResponseData implements Built<ForgotPassword200ResponseData, ForgotPassword200ResponseDataBuilder> {
  /// Reset token (only included in development)
  @BuiltValueField(wireName: r'token')
  String? get token;

  ForgotPassword200ResponseData._();

  factory ForgotPassword200ResponseData([void updates(ForgotPassword200ResponseDataBuilder b)]) = _$ForgotPassword200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForgotPassword200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForgotPassword200ResponseData> get serializer => _$ForgotPassword200ResponseDataSerializer();
}

class _$ForgotPassword200ResponseDataSerializer implements PrimitiveSerializer<ForgotPassword200ResponseData> {
  @override
  final Iterable<Type> types = const [ForgotPassword200ResponseData, _$ForgotPassword200ResponseData];

  @override
  final String wireName = r'ForgotPassword200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForgotPassword200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForgotPassword200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ForgotPassword200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForgotPassword200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForgotPassword200ResponseDataBuilder();
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

