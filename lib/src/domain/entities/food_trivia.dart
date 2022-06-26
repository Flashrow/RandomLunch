import 'package:equatable/equatable.dart';

class FoodTrivia extends Equatable {
  final String text;

  const FoodTrivia({
    required this.text,
  });

  @override
  List<Object?> get props => [text];
}
