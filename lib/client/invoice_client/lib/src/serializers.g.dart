// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(Address.serializer)
          ..add(CreateInvoiceItemRequest.serializer)
          ..add(CreateInvoiceRequest.serializer)
          ..add(CreateInvoiceRequestTypeEnum.serializer)
          ..add(ErrorResponse.serializer)
          ..add(HealthGet200Response.serializer)
          ..add(Invoice.serializer)
          ..add(InvoiceItem.serializer)
          ..add(InvoiceStatistics.serializer)
          ..add(InvoiceStatusEnum.serializer)
          ..add(InvoiceTypeEnum.serializer)
          ..add(InvoicesGet200Response.serializer)
          ..add(InvoicesGet200ResponseData.serializer)
          ..add(InvoicesIdDelete200Response.serializer)
          ..add(InvoicesIdGet200Response.serializer)
          ..add(InvoicesIdMarkPaidPost200Response.serializer)
          ..add(InvoicesIdMarkPaidPostRequest.serializer)
          ..add(InvoicesIdPut200Response.serializer)
          ..add(InvoicesPost201Response.serializer)
          ..add(InvoicesStatisticsGet200Response.serializer)
          ..add(UpdateInvoiceRequest.serializer)
          ..add(UpdateInvoiceRequestStatusEnum.serializer)
          ..add(ValidationErrorResponse.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(Invoice)]),
            () => ListBuilder<Invoice>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(String)]),
            ]),
            () => MapBuilder<String, BuiltList<String>>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(CreateInvoiceItemRequest),
            ]),
            () => ListBuilder<CreateInvoiceItemRequest>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject),
            ]),
            () => MapBuilder<String, JsonObject?>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(InvoiceItem)]),
            () => ListBuilder<InvoiceItem>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
