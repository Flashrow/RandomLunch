import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_trivia.freezed.dart';

@Freezed()
class FoodTrivia with _$FoodTrivia {
  const factory FoodTrivia({
    required String text,
  }) = _FoodTrivia;
}
