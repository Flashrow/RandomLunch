// Mocks generated by Mockito 5.2.0 from annotations
// in random_lunch/test/features/random_recipe/domain/usecases/get_random_food_trivia_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:random_lunch/src/domain/entities/food_trivia.dart' as _i2;
import 'package:random_lunch/src/domain/entities/recipe.dart' as _i5;
import 'package:random_lunch/src/domain/repositories/recipes_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeFoodTrivia_0 extends _i1.Fake implements _i2.FoodTrivia {}

/// A class which mocks [RecipesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRecipesRepository extends _i1.Mock implements _i3.RecipesRepository {
  MockRecipesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i5.Recipe>> getRandomRecipe(
          {bool? limitLicense, String? tags, int? number}) =>
      (super.noSuchMethod(
              Invocation.method(#getRandomRecipe, [],
                  {#limitLicense: limitLicense, #tags: tags, #number: number}),
              returnValue: Future<List<_i5.Recipe>>.value(<_i5.Recipe>[]))
          as _i4.Future<List<_i5.Recipe>>);
  @override
  _i4.Future<_i2.FoodTrivia> getRandomFoodTrivia() =>
      (super.noSuchMethod(Invocation.method(#getRandomFoodTrivia, []),
              returnValue: Future<_i2.FoodTrivia>.value(_FakeFoodTrivia_0()))
          as _i4.Future<_i2.FoodTrivia>);
}
