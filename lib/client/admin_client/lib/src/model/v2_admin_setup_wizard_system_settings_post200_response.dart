//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/v2_admin_setup_wizard_system_settings_post200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_setup_wizard_system_settings_post200_response.g.dart';

/// V2AdminSetupWizardSystemSettingsPost200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class V2AdminSetupWizardSystemSettingsPost200Response implements Built<V2AdminSetupWizardSystemSettingsPost200Response, V2AdminSetupWizardSystemSettingsPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  V2AdminSetupWizardSystemSettingsPost200ResponseData? get data;

  V2AdminSetupWizardSystemSettingsPost200Response._();

  factory V2AdminSetupWizardSystemSettingsPost200Response([void updates(V2AdminSetupWizardSystemSettingsPost200ResponseBuilder b)]) = _$V2AdminSetupWizardSystemSettingsPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminSetupWizardSystemSettingsPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminSetupWizardSystemSettingsPost200Response> get serializer => _$V2AdminSetupWizardSystemSettingsPost200ResponseSerializer();
}

class _$V2AdminSetupWizardSystemSettingsPost200ResponseSerializer implements PrimitiveSerializer<V2AdminSetupWizardSystemSettingsPost200Response> {
  @override
  final Iterable<Type> types = const [V2AdminSetupWizardSystemSettingsPost200Response, _$V2AdminSetupWizardSystemSettingsPost200Response];

  @override
  final String wireName = r'V2AdminSetupWizardSystemSettingsPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminSetupWizardSystemSettingsPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(V2AdminSetupWizardSystemSettingsPost200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminSetupWizardSystemSettingsPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminSetupWizardSystemSettingsPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V2AdminSetupWizardSystemSettingsPost200ResponseData),
          ) as V2AdminSetupWizardSystemSettingsPost200ResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminSetupWizardSystemSettingsPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminSetupWizardSystemSettingsPost200ResponseBuilder();
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

