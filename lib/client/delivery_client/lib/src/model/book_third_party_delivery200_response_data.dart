//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_third_party_delivery200_response_data.g.dart';

/// BookThirdPartyDelivery200ResponseData
///
/// Properties:
/// * [code] 
/// * [status] 
/// * [time] 
/// * [date] 
@BuiltValue()
abstract class BookThirdPartyDelivery200ResponseData implements Built<BookThirdPartyDelivery200ResponseData, BookThirdPartyDelivery200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'code')
  int? get code;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'time')
  String? get time;

  @BuiltValueField(wireName: r'date')
  String? get date;

  BookThirdPartyDelivery200ResponseData._();

  factory BookThirdPartyDelivery200ResponseData([void updates(BookThirdPartyDelivery200ResponseDataBuilder b)]) = _$BookThirdPartyDelivery200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookThirdPartyDelivery200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookThirdPartyDelivery200ResponseData> get serializer => _$BookThirdPartyDelivery200ResponseDataSerializer();
}

class _$BookThirdPartyDelivery200ResponseDataSerializer implements PrimitiveSerializer<BookThirdPartyDelivery200ResponseData> {
  @override
  final Iterable<Type> types = const [BookThirdPartyDelivery200ResponseData, _$BookThirdPartyDelivery200ResponseData];

  @override
  final String wireName = r'BookThirdPartyDelivery200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookThirdPartyDelivery200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookThirdPartyDelivery200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookThirdPartyDelivery200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.time = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookThirdPartyDelivery200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookThirdPartyDelivery200ResponseDataBuilder();
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

