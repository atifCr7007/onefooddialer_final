//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_setup_wizard_status_put_request.g.dart';

/// V2AdminSetupWizardStatusPutRequest
///
/// Properties:
/// * [completed] 
/// * [currentStep] 
/// * [companyId] 
/// * [unitId] 
@BuiltValue()
abstract class V2AdminSetupWizardStatusPutRequest implements Built<V2AdminSetupWizardStatusPutRequest, V2AdminSetupWizardStatusPutRequestBuilder> {
  @BuiltValueField(wireName: r'completed')
  bool? get completed;

  @BuiltValueField(wireName: r'current_step')
  int? get currentStep;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  V2AdminSetupWizardStatusPutRequest._();

  factory V2AdminSetupWizardStatusPutRequest([void updates(V2AdminSetupWizardStatusPutRequestBuilder b)]) = _$V2AdminSetupWizardStatusPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminSetupWizardStatusPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminSetupWizardStatusPutRequest> get serializer => _$V2AdminSetupWizardStatusPutRequestSerializer();
}

class _$V2AdminSetupWizardStatusPutRequestSerializer implements PrimitiveSerializer<V2AdminSetupWizardStatusPutRequest> {
  @override
  final Iterable<Type> types = const [V2AdminSetupWizardStatusPutRequest, _$V2AdminSetupWizardStatusPutRequest];

  @override
  final String wireName = r'V2AdminSetupWizardStatusPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminSetupWizardStatusPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.completed != null) {
      yield r'completed';
      yield serializers.serialize(
        object.completed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.currentStep != null) {
      yield r'current_step';
      yield serializers.serialize(
        object.currentStep,
        specifiedType: const FullType(int),
      );
    }
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
    V2AdminSetupWizardStatusPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminSetupWizardStatusPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.completed = valueDes;
          break;
        case r'current_step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentStep = valueDes;
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
  V2AdminSetupWizardStatusPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminSetupWizardStatusPutRequestBuilder();
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

