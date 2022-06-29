import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_lunch/src/domain/entities/food_trivia.dart';

part 'food_trivia_model.freezed.dart';
part 'food_trivia_model.g.dart';

@Freezed()
class FoodTriviaModel with _$FoodTriviaModel implements FoodTrivia {
  const factory FoodTriviaModel({
    required String text,
  }) = _FoodTriviaModel;
  factory FoodTriviaModel.fromJson(Map<String, dynamic> json) =>
      _$FoodTriviaModelFromJson(json);
}
