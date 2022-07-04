import 'package:get_it/get_it.dart';
import 'package:random_lunch/src/data/data_sources/food_data_source.dart';
import 'package:random_lunch/src/data/data_sources/remote_data_source/dio_client.dart';
import 'package:random_lunch/src/data/data_sources/remote_data_source/food_remote_data_source.dart';
import 'package:random_lunch/src/data/repositories/food_repository_implementation.dart';
import 'package:random_lunch/src/domain/repositories/food_repository.dart';
import 'package:random_lunch/src/domain/usecases/get_random_food_trivia_usecase.dart';
import 'package:random_lunch/src/domain/usecases/get_random_recipe_usecase.dart';
import 'package:random_lunch/src/presentation/blocs/random_recipe/random_recipe_cubit.dart';

final getIt = GetIt.instance;

void init() {
  initUseCases();
  initBloc();
  initRepositories();
  initDataSources();
  initExternal();
}

void initBloc() {
  getIt.registerFactory(
    () => RandomRecipeCubit(getIt()),
  );
}

void initUseCases() {
  getIt
    ..registerFactory(
      () => GetRandomRecipeUseCase(getIt()),
    )
    ..registerFactory(
      () => GetRandomFoodTriviaUseCase(getIt()),
    );
}

void initRepositories() {
  getIt.registerLazySingleton<FoodRepository>(
    () => FoodRepositoryImplementation(getIt()),
  );
}

void initDataSources() {
  getIt.registerLazySingleton<FoodDataSource>(
    () => FoodRemoteDataSource(getIt()),
  );
}

void initExternal() {
  getIt.registerLazySingleton(() => DioClient().dio);
}
