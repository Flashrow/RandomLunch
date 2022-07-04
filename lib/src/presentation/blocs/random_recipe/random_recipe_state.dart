part of 'random_recipe_cubit.dart';

@Freezed()
class RandomRecipeState with _$RandomRecipeState {
  const factory RandomRecipeState.initial() = Initial;
  const factory RandomRecipeState.loading() = Loading;
  const factory RandomRecipeState.failed() = Failed;
  const factory RandomRecipeState.loaded(Recipe recipe) = Loaded;
}
