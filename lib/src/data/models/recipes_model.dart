import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_lunch/src/data/models/recipe_model.dart';

import '../../domain/entities/recipe.dart';
import '../../domain/entities/recipes.dart';

part 'recipes_model.freezed.dart';
part 'recipes_model.g.dart';

@Freezed()
class RecipesModel with _$RecipesModel implements Recipes {
  const factory RecipesModel({
    required List<RecipeModel> recipes,
  }) = _RecipesModel;

  factory RecipesModel.fromJson(Map<String, dynamic> json) =>
      _$RecipesModelFromJson(json);
}
