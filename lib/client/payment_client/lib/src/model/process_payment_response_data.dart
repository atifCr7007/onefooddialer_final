//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_payment_response_data.g.dart';

/// ProcessPaymentResponseData
///
/// Properties:
/// * [action] - URL to redirect to or form action
/// * [method] - HTTP method to use
/// * [fields] - Form fields to submit
@BuiltValue()
abstract class ProcessPaymentResponseData implements Built<ProcessPaymentResponseData, ProcessPaymentResponseDataBuilder> {
  /// URL to redirect to or form action
  @BuiltValueField(wireName: r'action')
  String? get action;

  /// HTTP method to use
  @BuiltValueField(wireName: r'method')
  ProcessPaymentResponseDataMethodEnum? get method;
  // enum methodEnum {  GET,  POST,  };

  /// Form fields to submit
  @BuiltValueField(wireName: r'fields')
  Map<String,dynamic>? get fields;

  ProcessPaymentResponseData._();

  factory ProcessPaymentResponseData([void updates(ProcessPaymentResponseDataBuilder b)]) = _$ProcessPaymentResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessPaymentResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessPaymentResponseData> get serializer => _$ProcessPaymentResponseDataSerializer();
}

class _$ProcessPaymentResponseDataSerializer implements PrimitiveSerializer<ProcessPaymentResponseData> {
  @override
  final Iterable<Type> types = const [ProcessPaymentResponseData, _$ProcessPaymentResponseData];

  @override
  final String wireName = r'ProcessPaymentResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessPaymentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(ProcessPaymentResponseDataMethodEnum),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessPaymentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessPaymentResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProcessPaymentResponseDataMethodEnum),
          ) as ProcessPaymentResponseDataMethodEnum;
          result.method = valueDes;
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.fields = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessPaymentResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessPaymentResponseDataBuilder();
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

class ProcessPaymentResponseDataMethodEnum extends EnumClass {

  /// HTTP method to use
  @BuiltValueEnumConst(wireName: r'GET')
  static const ProcessPaymentResponseDataMethodEnum GET = _$processPaymentResponseDataMethodEnum_GET;
  /// HTTP method to use
  @BuiltValueEnumConst(wireName: r'POST')
  static const ProcessPaymentResponseDataMethodEnum POST = _$processPaymentResponseDataMethodEnum_POST;
  /// HTTP method to use
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProcessPaymentResponseDataMethodEnum unknownDefaultOpenApi = _$processPaymentResponseDataMethodEnum_unknownDefaultOpenApi;

  static Serializer<ProcessPaymentResponseDataMethodEnum> get serializer => _$processPaymentResponseDataMethodEnumSerializer;

  const ProcessPaymentResponseDataMethodEnum._(String name): super(name);

  static BuiltSet<ProcessPaymentResponseDataMethodEnum> get values => _$processPaymentResponseDataMethodEnumValues;
  static ProcessPaymentResponseDataMethodEnum valueOf(String name) => _$processPaymentResponseDataMethodEnumValueOf(name);
}

