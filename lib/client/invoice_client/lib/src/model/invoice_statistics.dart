//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invoice_statistics.g.dart';

/// InvoiceStatistics
///
/// Properties:
/// * [totalInvoices] 
/// * [totalAmount] 
/// * [paidAmount] 
/// * [pendingAmount] 
/// * [overdueAmount] 
/// * [draftCount] 
/// * [sentCount] 
/// * [paidCount] 
/// * [overdueCount] 
/// * [cancelledCount] 
/// * [currency] 
@BuiltValue()
abstract class InvoiceStatistics implements Built<InvoiceStatistics, InvoiceStatisticsBuilder> {
  @BuiltValueField(wireName: r'total_invoices')
  int get totalInvoices;

  @BuiltValueField(wireName: r'total_amount')
  double get totalAmount;

  @BuiltValueField(wireName: r'paid_amount')
  double get paidAmount;

  @BuiltValueField(wireName: r'pending_amount')
  double get pendingAmount;

  @BuiltValueField(wireName: r'overdue_amount')
  double get overdueAmount;

  @BuiltValueField(wireName: r'draft_count')
  int get draftCount;

  @BuiltValueField(wireName: r'sent_count')
  int get sentCount;

  @BuiltValueField(wireName: r'paid_count')
  int get paidCount;

  @BuiltValueField(wireName: r'overdue_count')
  int get overdueCount;

  @BuiltValueField(wireName: r'cancelled_count')
  int get cancelledCount;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  InvoiceStatistics._();

  factory InvoiceStatistics([void updates(InvoiceStatisticsBuilder b)]) = _$InvoiceStatistics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvoiceStatisticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvoiceStatistics> get serializer => _$InvoiceStatisticsSerializer();
}

class _$InvoiceStatisticsSerializer implements PrimitiveSerializer<InvoiceStatistics> {
  @override
  final Iterable<Type> types = const [InvoiceStatistics, _$InvoiceStatistics];

  @override
  final String wireName = r'InvoiceStatistics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvoiceStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_invoices';
    yield serializers.serialize(
      object.totalInvoices,
      specifiedType: const FullType(int),
    );
    yield r'total_amount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(double),
    );
    yield r'paid_amount';
    yield serializers.serialize(
      object.paidAmount,
      specifiedType: const FullType(double),
    );
    yield r'pending_amount';
    yield serializers.serialize(
      object.pendingAmount,
      specifiedType: const FullType(double),
    );
    yield r'overdue_amount';
    yield serializers.serialize(
      object.overdueAmount,
      specifiedType: const FullType(double),
    );
    yield r'draft_count';
    yield serializers.serialize(
      object.draftCount,
      specifiedType: const FullType(int),
    );
    yield r'sent_count';
    yield serializers.serialize(
      object.sentCount,
      specifiedType: const FullType(int),
    );
    yield r'paid_count';
    yield serializers.serialize(
      object.paidCount,
      specifiedType: const FullType(int),
    );
    yield r'overdue_count';
    yield serializers.serialize(
      object.overdueCount,
      specifiedType: const FullType(int),
    );
    yield r'cancelled_count';
    yield serializers.serialize(
      object.cancelledCount,
      specifiedType: const FullType(int),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvoiceStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvoiceStatisticsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_invoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalInvoices = valueDes;
          break;
        case r'total_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAmount = valueDes;
          break;
        case r'paid_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.paidAmount = valueDes;
          break;
        case r'pending_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.pendingAmount = valueDes;
          break;
        case r'overdue_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.overdueAmount = valueDes;
          break;
        case r'draft_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.draftCount = valueDes;
          break;
        case r'sent_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sentCount = valueDes;
          break;
        case r'paid_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.paidCount = valueDes;
          break;
        case r'overdue_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.overdueCount = valueDes;
          break;
        case r'cancelled_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cancelledCount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvoiceStatistics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvoiceStatisticsBuilder();
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

