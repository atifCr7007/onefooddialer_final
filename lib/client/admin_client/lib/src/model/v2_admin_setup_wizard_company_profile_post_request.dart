//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_setup_wizard_company_profile_post_request.g.dart';

/// V2AdminSetupWizardCompanyProfilePostRequest
///
/// Properties:
/// * [companyName] 
/// * [postalAddress] 
/// * [supportEmail] 
/// * [phone] 
/// * [senderId] 
/// * [companyId] 
/// * [unitId] 
@BuiltValue()
abstract class V2AdminSetupWizardCompanyProfilePostRequest implements Built<V2AdminSetupWizardCompanyProfilePostRequest, V2AdminSetupWizardCompanyProfilePostRequestBuilder> {
  @BuiltValueField(wireName: r'company_name')
  String get companyName;

  @BuiltValueField(wireName: r'postal_address')
  String get postalAddress;

  @BuiltValueField(wireName: r'support_email')
  String get supportEmail;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'sender_id')
  String get senderId;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  V2AdminSetupWizardCompanyProfilePostRequest._();

  factory V2AdminSetupWizardCompanyProfilePostRequest([void updates(V2AdminSetupWizardCompanyProfilePostRequestBuilder b)]) = _$V2AdminSetupWizardCompanyProfilePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminSetupWizardCompanyProfilePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminSetupWizardCompanyProfilePostRequest> get serializer => _$V2AdminSetupWizardCompanyProfilePostRequestSerializer();
}

class _$V2AdminSetupWizardCompanyProfilePostRequestSerializer implements PrimitiveSerializer<V2AdminSetupWizardCompanyProfilePostRequest> {
  @override
  final Iterable<Type> types = const [V2AdminSetupWizardCompanyProfilePostRequest, _$V2AdminSetupWizardCompanyProfilePostRequest];

  @override
  final String wireName = r'V2AdminSetupWizardCompanyProfilePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminSetupWizardCompanyProfilePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'company_name';
    yield serializers.serialize(
      object.companyName,
      specifiedType: const FullType(String),
    );
    yield r'postal_address';
    yield serializers.serialize(
      object.postalAddress,
      specifiedType: const FullType(String),
    );
    yield r'support_email';
    yield serializers.serialize(
      object.supportEmail,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'sender_id';
    yield serializers.serialize(
      object.senderId,
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
    V2AdminSetupWizardCompanyProfilePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminSetupWizardCompanyProfilePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'company_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.companyName = valueDes;
          break;
        case r'postal_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.postalAddress = valueDes;
          break;
        case r'support_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supportEmail = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'sender_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.senderId = valueDes;
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
  V2AdminSetupWizardCompanyProfilePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminSetupWizardCompanyProfilePostRequestBuilder();
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

