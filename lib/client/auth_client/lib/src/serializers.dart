//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:auth_client/src/date_serializer.dart';
import 'package:auth_client/src/model/date.dart';

import 'package:auth_client/src/model/error.dart';
import 'package:auth_client/src/model/forgot_password200_response.dart';
import 'package:auth_client/src/model/forgot_password200_response_data.dart';
import 'package:auth_client/src/model/forgot_password_request.dart';
import 'package:auth_client/src/model/get_user200_response.dart';
import 'package:auth_client/src/model/get_user200_response_data.dart';
import 'package:auth_client/src/model/keycloak_callback200_response.dart';
import 'package:auth_client/src/model/keycloak_callback200_response_data.dart';
import 'package:auth_client/src/model/keycloak_callback200_response_data_keycloak_tokens.dart';
import 'package:auth_client/src/model/keycloak_login200_response.dart';
import 'package:auth_client/src/model/keycloak_login200_response_data.dart';
import 'package:auth_client/src/model/login200_response.dart';
import 'package:auth_client/src/model/login200_response_data.dart';
import 'package:auth_client/src/model/login_request.dart';
import 'package:auth_client/src/model/logout200_response.dart';
import 'package:auth_client/src/model/refresh_token_request.dart';
import 'package:auth_client/src/model/reset_password200_response.dart';
import 'package:auth_client/src/model/reset_password_request.dart';
import 'package:auth_client/src/model/user.dart';
import 'package:auth_client/src/model/validate_token200_response.dart';
import 'package:auth_client/src/model/validate_token200_response_data.dart';
import 'package:auth_client/src/model/validate_token_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  Error,
  ForgotPassword200Response,
  ForgotPassword200ResponseData,
  ForgotPasswordRequest,
  GetUser200Response,
  GetUser200ResponseData,
  KeycloakCallback200Response,
  KeycloakCallback200ResponseData,
  KeycloakCallback200ResponseDataKeycloakTokens,
  KeycloakLogin200Response,
  KeycloakLogin200ResponseData,
  Login200Response,
  Login200ResponseData,
  LoginRequest,
  Logout200Response,
  RefreshTokenRequest,
  ResetPassword200Response,
  ResetPasswordRequest,
  User,
  ValidateToken200Response,
  ValidateToken200ResponseData,
  ValidateTokenRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
