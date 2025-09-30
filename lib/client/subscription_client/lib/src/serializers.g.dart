// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(CancelSubscriptionRequest.serializer)
      ..add(CreateSubscription201Response.serializer)
      ..add(CreateSubscriptionPlan201Response.serializer)
      ..add(Customer.serializer)
      ..add(DeleteSubscriptionPlan200Response.serializer)
      ..add(Error.serializer)
      ..add(GetAllSubscriptionPlans200Response.serializer)
      ..add(GetAllSubscriptions200Response.serializer)
      ..add(GetSubscriptionById200Response.serializer)
      ..add(GetSubscriptionLogs200Response.serializer)
      ..add(GetSubscriptionPlanById200Response.serializer)
      ..add(PauseSubscriptionRequest.serializer)
      ..add(ProcessSubscriptionPaymentRequest.serializer)
      ..add(ProcessSubscriptionPaymentRequestPaymentStatusEnum.serializer)
      ..add(RenewSubscriptionRequest.serializer)
      ..add(Subscription.serializer)
      ..add(SubscriptionInput.serializer)
      ..add(SubscriptionItem.serializer)
      ..add(SubscriptionItemInput.serializer)
      ..add(SubscriptionLog.serializer)
      ..add(SubscriptionPauseHistoryInner.serializer)
      ..add(SubscriptionPlan.serializer)
      ..add(SubscriptionPlanInput.serializer)
      ..add(SubscriptionPlanInputPlanPeriodEnum.serializer)
      ..add(SubscriptionPlanInputShowToCustomerEnum.serializer)
      ..add(SubscriptionPlanPlanPeriodEnum.serializer)
      ..add(SubscriptionPlanShowToCustomerEnum.serializer)
      ..add(SubscriptionPlanUpdateInput.serializer)
      ..add(SubscriptionPlanUpdateInputPlanPeriodEnum.serializer)
      ..add(SubscriptionPlanUpdateInputShowToCustomerEnum.serializer)
      ..add(SubscriptionStatusEnum.serializer)
      ..add(SubscriptionUpdateInput.serializer)
      ..add(ValidationError.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])
          ]),
          () => ListBuilder<Map<String, dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])
          ]),
          () => ListBuilder<Map<String, dynamic>>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Subscription)]),
          () => ListBuilder<Subscription>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(SubscriptionItemInput)]),
          () => ListBuilder<SubscriptionItemInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SubscriptionLog)]),
          () => ListBuilder<SubscriptionLog>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(SubscriptionPauseHistoryInner)]),
          () => ListBuilder<SubscriptionPauseHistoryInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SubscriptionItem)]),
          () => ListBuilder<SubscriptionItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SubscriptionPlan)]),
          () => ListBuilder<SubscriptionPlan>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(String)])
          ]),
          () => MapBuilder<String, BuiltList<String>>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
