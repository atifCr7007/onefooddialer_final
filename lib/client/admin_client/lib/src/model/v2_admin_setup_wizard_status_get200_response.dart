//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/v2_setup_wizard_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_setup_wizard_status_get200_response.g.dart';

/// V2AdminSetupWizardStatusGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class V2AdminSetupWizardStatusGet200Response implements Built<V2AdminSetupWizardStatusGet200Response, V2AdminSetupWizardStatusGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  V2SetupWizardStatus? get data;

  V2AdminSetupWizardStatusGet200Response._();

  factory V2AdminSetupWizardStatusGet200Response([void updates(V2AdminSetupWizardStatusGet200ResponseBuilder b)]) = _$V2AdminSetupWizardStatusGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminSetupWizardStatusGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminSetupWizardStatusGet200Response> get serializer => _$V2AdminSetupWizardStatusGet200ResponseSerializer();
}

class _$V2AdminSetupWizardStatusGet200ResponseSerializer implements PrimitiveSerializer<V2AdminSetupWizardStatusGet200Response> {
  @override
  final Iterable<Type> types = const [V2AdminSetupWizardStatusGet200Response, _$V2AdminSetupWizardStatusGet200Response];

  @override
  final String wireName = r'V2AdminSetupWizardStatusGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminSetupWizardStatusGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(V2SetupWizardStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminSetupWizardStatusGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminSetupWizardStatusGet200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(V2SetupWizardStatus),
          ) as V2SetupWizardStatus;
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
  V2AdminSetupWizardStatusGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminSetupWizardStatusGet200ResponseBuilder();
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

