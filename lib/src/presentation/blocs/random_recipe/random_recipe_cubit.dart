import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:random_lunch/src/domain/entities/recipe.dart';
import 'package:random_lunch/src/domain/usecases/get_random_recipe_usecase.dart';

import '../../../domain/entities/recipes.dart';

part 'random_recipe_cubit.freezed.dart';
part 'random_recipe_state.dart';

class RandomRecipeCubit extends Cubit<RandomRecipeState> {
  final GetRandomRecipeUseCase _randomRecipeUseCase;
  RandomRecipeCubit(this._randomRecipeUseCase) : super(const Initial());

  getRandomRecipe() async {
    Logger().i("getting random recipe");
    emit(const Loading());
    try {
      final Recipes recipes = await _randomRecipeUseCase();
      Logger().i("recipe fetched: ${recipes.recipes.first.title}");
      emit(Loaded(recipes.recipes.first));
    } catch (e) {
      Logger().i("failed");
      Logger().i(e);
      emit(const Failed());
    }
  }
}
