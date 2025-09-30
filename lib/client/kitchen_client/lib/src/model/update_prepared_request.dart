//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_prepared_request.g.dart';

/// UpdatePreparedRequest
///
/// Properties:
/// * [menu] - Menu type
/// * [date] - Date (YYYY-MM-DD)
/// * [screen] - Screen ID
@BuiltValue()
abstract class UpdatePreparedRequest implements Built<UpdatePreparedRequest, UpdatePreparedRequestBuilder> {
  /// Menu type
  @BuiltValueField(wireName: r'menu')
  String? get menu;

  /// Date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'date')
  Date? get date;

  /// Screen ID
  @BuiltValueField(wireName: r'screen')
  int? get screen;

  UpdatePreparedRequest._();

  factory UpdatePreparedRequest([void updates(UpdatePreparedRequestBuilder b)]) = _$UpdatePreparedRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePreparedRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePreparedRequest> get serializer => _$UpdatePreparedRequestSerializer();
}

class _$UpdatePreparedRequestSerializer implements PrimitiveSerializer<UpdatePreparedRequest> {
  @override
  final Iterable<Type> types = const [UpdatePreparedRequest, _$UpdatePreparedRequest];

  @override
  final String wireName = r'UpdatePreparedRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePreparedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.menu != null) {
      yield r'menu';
      yield serializers.serialize(
        object.menu,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.screen != null) {
      yield r'screen';
      yield serializers.serialize(
        object.screen,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePreparedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePreparedRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.menu = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'screen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.screen = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePreparedRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePreparedRequestBuilder();
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

