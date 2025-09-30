// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(DeliveryAddress.serializer)
          ..add(DeliveryAddressTypeEnum.serializer)
          ..add(ErrorResponse.serializer)
          ..add(ErrorResponseStatusEnum.serializer)
          ..add(ItemCustomization.serializer)
          ..add(NutritionalInfo.serializer)
          ..add(Order.serializer)
          ..add(OrderDeliveryTypeEnum.serializer)
          ..add(OrderItem.serializer)
          ..add(OrderItemStatusEnum.serializer)
          ..add(OrderPaymentMethodEnum.serializer)
          ..add(OrderPaymentStatusEnum.serializer)
          ..add(OrderPriorityEnum.serializer)
          ..add(OrderStatusEnum.serializer)
          ..add(OrdersOrderIdDeleteRequest.serializer)
          ..add(OrdersOrderIdItemsGet200Response.serializer)
          ..add(OrdersOrderIdItemsGet200ResponseData.serializer)
          ..add(OrdersOrderIdItemsGet200ResponseStatusEnum.serializer)
          ..add(PaginationMeta.serializer)
          ..add(ValidationErrorResponse.serializer)
          ..add(ValidationErrorResponseErrorsInner.serializer)
          ..add(ValidationErrorResponseStatusEnum.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ItemCustomization),
            ]),
            () => ListBuilder<ItemCustomization>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(OrderItem)]),
            () => ListBuilder<OrderItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(OrderItem)]),
            () => ListBuilder<OrderItem>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(ValidationErrorResponseErrorsInner),
            ]),
            () => ListBuilder<ValidationErrorResponseErrorsInner>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
