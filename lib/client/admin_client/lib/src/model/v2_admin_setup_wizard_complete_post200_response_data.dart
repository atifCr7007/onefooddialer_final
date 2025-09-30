//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_setup_wizard_complete_post200_response_data.g.dart';

/// V2AdminSetupWizardCompletePost200ResponseData
///
/// Properties:
/// * [completed] 
/// * [currentStep] 
@BuiltValue()
abstract class V2AdminSetupWizardCompletePost200ResponseData implements Built<V2AdminSetupWizardCompletePost200ResponseData, V2AdminSetupWizardCompletePost200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'completed')
  bool? get completed;

  @BuiltValueField(wireName: r'current_step')
  int? get currentStep;

  V2AdminSetupWizardCompletePost200ResponseData._();

  factory V2AdminSetupWizardCompletePost200ResponseData([void updates(V2AdminSetupWizardCompletePost200ResponseDataBuilder b)]) = _$V2AdminSetupWizardCompletePost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminSetupWizardCompletePost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminSetupWizardCompletePost200ResponseData> get serializer => _$V2AdminSetupWizardCompletePost200ResponseDataSerializer();
}

class _$V2AdminSetupWizardCompletePost200ResponseDataSerializer implements PrimitiveSerializer<V2AdminSetupWizardCompletePost200ResponseData> {
  @override
  final Iterable<Type> types = const [V2AdminSetupWizardCompletePost200ResponseData, _$V2AdminSetupWizardCompletePost200ResponseData];

  @override
  final String wireName = r'V2AdminSetupWizardCompletePost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminSetupWizardCompletePost200ResponseData object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminSetupWizardCompletePost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminSetupWizardCompletePost200ResponseDataBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminSetupWizardCompletePost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminSetupWizardCompletePost200ResponseDataBuilder();
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

