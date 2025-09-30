// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(CreatePaymentMethodRequest.serializer)
          ..add(CreatePaymentMethodRequestTypeEnum.serializer)
          ..add(DeleteResponse.serializer)
          ..add(ErrorResponse.serializer)
          ..add(InitiatePaymentRequest.serializer)
          ..add(InitiatePaymentResponse.serializer)
          ..add(InitiatePaymentResponseData.serializer)
          ..add(LogsResponse.serializer)
          ..add(PaymentCallbackResponse.serializer)
          ..add(PaymentCallbackResponseData.serializer)
          ..add(PaymentLog.serializer)
          ..add(PaymentMethod.serializer)
          ..add(PaymentMethodResponse.serializer)
          ..add(PaymentMethodsResponse.serializer)
          ..add(PaymentStatusResponse.serializer)
          ..add(PaymentStatusResponseData.serializer)
          ..add(ProcessPaymentRequest.serializer)
          ..add(ProcessPaymentRequestGatewayEnum.serializer)
          ..add(ProcessPaymentResponse.serializer)
          ..add(ProcessPaymentResponseData.serializer)
          ..add(ProcessPaymentResponseDataMethodEnum.serializer)
          ..add(RefundPaymentRequest.serializer)
          ..add(RefundPaymentResponse.serializer)
          ..add(RefundPaymentResponseData.serializer)
          ..add(StatisticsResponse.serializer)
          ..add(StatisticsResponseData.serializer)
          ..add(TransactionSummary.serializer)
          ..add(UpdatePaymentMethodRequest.serializer)
          ..add(UpdatePaymentMethodRequestTypeEnum.serializer)
          ..add(ValidationErrorResponse.serializer)
          ..add(WebhookResponse.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(PaymentLog)]),
            () => ListBuilder<PaymentLog>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(PaymentMethod)]),
            () => ListBuilder<PaymentMethod>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(TransactionSummary),
            ]),
            () => ListBuilder<TransactionSummary>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
