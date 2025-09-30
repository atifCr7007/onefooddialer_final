//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_setup_wizard_system_settings_post_request.g.dart';

/// V2AdminSetupWizardSystemSettingsPostRequest
///
/// Properties:
/// * [locale] 
/// * [currency] 
/// * [currencySymbol] 
/// * [timeZone] 
/// * [companyId] 
/// * [unitId] 
@BuiltValue()
abstract class V2AdminSetupWizardSystemSettingsPostRequest implements Built<V2AdminSetupWizardSystemSettingsPostRequest, V2AdminSetupWizardSystemSettingsPostRequestBuilder> {
  @BuiltValueField(wireName: r'locale')
  String get locale;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'currency_symbol')
  String get currencySymbol;

  @BuiltValueField(wireName: r'time_zone')
  String get timeZone;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  V2AdminSetupWizardSystemSettingsPostRequest._();

  factory V2AdminSetupWizardSystemSettingsPostRequest([void updates(V2AdminSetupWizardSystemSettingsPostRequestBuilder b)]) = _$V2AdminSetupWizardSystemSettingsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminSetupWizardSystemSettingsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminSetupWizardSystemSettingsPostRequest> get serializer => _$V2AdminSetupWizardSystemSettingsPostRequestSerializer();
}

class _$V2AdminSetupWizardSystemSettingsPostRequestSerializer implements PrimitiveSerializer<V2AdminSetupWizardSystemSettingsPostRequest> {
  @override
  final Iterable<Type> types = const [V2AdminSetupWizardSystemSettingsPostRequest, _$V2AdminSetupWizardSystemSettingsPostRequest];

  @override
  final String wireName = r'V2AdminSetupWizardSystemSettingsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminSetupWizardSystemSettingsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'locale';
    yield serializers.serialize(
      object.locale,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'currency_symbol';
    yield serializers.serialize(
      object.currencySymbol,
      specifiedType: const FullType(String),
    );
    yield r'time_zone';
    yield serializers.serialize(
      object.timeZone,
      specifiedType: const FullType(String),
    );
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
    V2AdminSetupWizardSystemSettingsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminSetupWizardSystemSettingsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'currency_symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currencySymbol = valueDes;
          break;
        case r'time_zone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeZone = valueDes;
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
  V2AdminSetupWizardSystemSettingsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminSetupWizardSystemSettingsPostRequestBuilder();
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

