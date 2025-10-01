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
import 'package:meal_client/src/date_serializer.dart';
import 'package:meal_client/src/model/date.dart';

import 'package:meal_client/src/model/create_meal201_response.dart';
import 'package:meal_client/src/model/delete_meal200_response.dart';
import 'package:meal_client/src/model/error.dart';
import 'package:meal_client/src/model/get_all_meals200_response.dart';
import 'package:meal_client/src/model/get_meal_by_id200_response.dart';
import 'package:meal_client/src/model/meal.dart';
import 'package:meal_client/src/model/meal_input.dart';
import 'package:meal_client/src/model/update_meal200_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  CreateMeal201Response,
  DeleteMeal200Response,
  Error,
  GetAllMeals200Response,
  GetMealById200Response,
  Meal,
  MealInput,
  UpdateMeal200Response,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
