import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:random_lunch/src/data/data_sources/food_data_source.dart';
import 'package:random_lunch/src/data/models/recipe_model.dart';
import 'package:retrofit/http.dart';

import '../../models/food_trivia_model.dart';
import '../../models/recipes_model.dart';
import 'endpoints.dart';

part 'food_remote_data_source.g.dart';

@lazySingleton
@RestApi()
abstract class FoodRemoteDataSource implements FoodDataSource {
  @factoryMethod
  factory FoodRemoteDataSource(Dio dio) = _FoodRemoteDataSource;

  @override
  @GET(Endpoints.randomFoodTrivia)
  Future<FoodTriviaModel> getRandomFoodTrivia();

  @override
  @GET(Endpoints.randomRecipe)
  Future<RecipesModel> getRandomRecipe({
    @Body() required bool limitLicense,
    @Body() required String tags,
    @Body() required int number,
  });
}
