//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_location.g.dart';

/// DeliveryLocation
///
/// Properties:
/// * [id] - Location ID
/// * [location] - Location name
/// * [city] - City
/// * [subCityArea] - Sub-city area
/// * [pin] - PIN code
/// * [deliveryCharges] - Delivery charges
/// * [deliveryTime] - Delivery time in minutes
/// * [isDefault] - Whether this is the default location
/// * [status] - Location status
@BuiltValue()
abstract class DeliveryLocation implements Built<DeliveryLocation, DeliveryLocationBuilder> {
  /// Location ID
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Location name
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// City
  @BuiltValueField(wireName: r'city')
  String? get city;

  /// Sub-city area
  @BuiltValueField(wireName: r'sub_city_area')
  String? get subCityArea;

  /// PIN code
  @BuiltValueField(wireName: r'pin')
  String? get pin;

  /// Delivery charges
  @BuiltValueField(wireName: r'delivery_charges')
  double? get deliveryCharges;

  /// Delivery time in minutes
  @BuiltValueField(wireName: r'delivery_time')
  String? get deliveryTime;

  /// Whether this is the default location
  @BuiltValueField(wireName: r'is_default')
  bool? get isDefault;

  /// Location status
  @BuiltValueField(wireName: r'status')
  bool? get status;

  DeliveryLocation._();

  factory DeliveryLocation([void updates(DeliveryLocationBuilder b)]) = _$DeliveryLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryLocation> get serializer => _$DeliveryLocationSerializer();
}

class _$DeliveryLocationSerializer implements PrimitiveSerializer<DeliveryLocation> {
  @override
  final Iterable<Type> types = const [DeliveryLocation, _$DeliveryLocation];

  @override
  final String wireName = r'DeliveryLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType(String),
      );
    }
    if (object.subCityArea != null) {
      yield r'sub_city_area';
      yield serializers.serialize(
        object.subCityArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.pin != null) {
      yield r'pin';
      yield serializers.serialize(
        object.pin,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryCharges != null) {
      yield r'delivery_charges';
      yield serializers.serialize(
        object.deliveryCharges,
        specifiedType: const FullType(double),
      );
    }
    if (object.deliveryTime != null) {
      yield r'delivery_time';
      yield serializers.serialize(
        object.deliveryTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.isDefault != null) {
      yield r'is_default';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryLocationBuilder result,
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
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'sub_city_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subCityArea = valueDes;
          break;
        case r'pin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pin = valueDes;
          break;
        case r'delivery_charges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.deliveryCharges = valueDes;
          break;
        case r'delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryTime = valueDes;
          break;
        case r'is_default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryLocationBuilder();
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

