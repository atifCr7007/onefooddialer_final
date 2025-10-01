//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:payment_client/src/model/transaction_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'statistics_response_data.g.dart';

/// StatisticsResponseData
///
/// Properties:
/// * [totalTransactions] - Total number of transactions
/// * [totalAmount] - Total transaction amount
/// * [transactionsByStatus] - Transactions grouped by status
/// * [transactionsByGateway] - Transactions grouped by gateway
/// * [recentTransactions] - Recent transactions
@BuiltValue()
abstract class StatisticsResponseData implements Built<StatisticsResponseData, StatisticsResponseDataBuilder> {
  /// Total number of transactions
  @BuiltValueField(wireName: r'total_transactions')
  int? get totalTransactions;

  /// Total transaction amount
  @BuiltValueField(wireName: r'total_amount')
  double? get totalAmount;

  /// Transactions grouped by status
  @BuiltValueField(wireName: r'transactions_by_status')
  Map<String,dynamic>? get transactionsByStatus;

  /// Transactions grouped by gateway
  @BuiltValueField(wireName: r'transactions_by_gateway')
  Map<String,dynamic>? get transactionsByGateway;

  /// Recent transactions
  @BuiltValueField(wireName: r'recent_transactions')
  BuiltList<TransactionSummary>? get recentTransactions;

  StatisticsResponseData._();

  factory StatisticsResponseData([void updates(StatisticsResponseDataBuilder b)]) = _$StatisticsResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatisticsResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatisticsResponseData> get serializer => _$StatisticsResponseDataSerializer();
}

class _$StatisticsResponseDataSerializer implements PrimitiveSerializer<StatisticsResponseData> {
  @override
  final Iterable<Type> types = const [StatisticsResponseData, _$StatisticsResponseData];

  @override
  final String wireName = r'StatisticsResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatisticsResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalTransactions != null) {
      yield r'total_transactions';
      yield serializers.serialize(
        object.totalTransactions,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalAmount != null) {
      yield r'total_amount';
      yield serializers.serialize(
        object.totalAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.transactionsByStatus != null) {
      yield r'transactions_by_status';
      yield serializers.serialize(
        object.transactionsByStatus,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
    if (object.transactionsByGateway != null) {
      yield r'transactions_by_gateway';
      yield serializers.serialize(
        object.transactionsByGateway,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
    if (object.recentTransactions != null) {
      yield r'recent_transactions';
      yield serializers.serialize(
        object.recentTransactions,
        specifiedType: const FullType(BuiltList, [FullType(TransactionSummary)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatisticsResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StatisticsResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_transactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTransactions = valueDes;
          break;
        case r'total_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAmount = valueDes;
          break;
        case r'transactions_by_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.transactionsByStatus = valueDes;
          break;
        case r'transactions_by_gateway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.transactionsByGateway = valueDes;
          break;
        case r'recent_transactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TransactionSummary)]),
          ) as BuiltList<TransactionSummary>;
          result.recentTransactions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatisticsResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatisticsResponseDataBuilder();
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

