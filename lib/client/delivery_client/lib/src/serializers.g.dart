// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(BookThirdPartyDelivery200Response.serializer)
      ..add(BookThirdPartyDelivery200ResponseData.serializer)
      ..add(BookThirdPartyDeliveryRequest.serializer)
      ..add(CancelThirdPartyDelivery200Response.serializer)
      ..add(DeliveryLocation.serializer)
      ..add(GetDeliveryLocations200Response.serializer)
      ..add(GetDeliveryOrders200Response.serializer)
      ..add(GetThirdPartyDeliveryStatus200Response.serializer)
      ..add(GetThirdPartyDeliveryStatus200ResponseData.serializer)
      ..add(GetThirdPartyDeliveryStatus200ResponseDataStatus.serializer)
      ..add(InlineObject.serializer)
      ..add(InlineObject1.serializer)
      ..add(InlineObject2.serializer)
      ..add(InlineObject3.serializer)
      ..add(Order.serializer)
      ..add(OrderDeliveryStatusEnum.serializer)
      ..add(OrderDeliveryTypeEnum.serializer)
      ..add(OrderOrderMenuEnum.serializer)
      ..add(OrderOrderStatusEnum.serializer)
      ..add(UpdateDeliveryStatus200Response.serializer)
      ..add(UpdateDeliveryStatusRequest.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DeliveryLocation)]),
          () => ListBuilder<DeliveryLocation>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Order)]),
          () => ListBuilder<Order>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(String)])
          ]),
          () => MapBuilder<String, BuiltList<String>>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
