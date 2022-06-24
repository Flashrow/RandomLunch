import 'dart:core';

class Recipe {
  final int id;
  final String title;
  final String image;
  final String imageType;
  final int servings;
  final int readyInMinutes;
  final String license;
  final String sourceName;
  final String sourceUrl;
  final String spoonacularSourceUrl;
  final int aggregateLikes;
  final double healthScore;
  final double spoonacularScore;
  final double pricePerServing;
  final bool cheap;
  final String creditsText;
  final List<String> cuisines;
  final bool dairyFree;
  final List<String> diets;
  final String gaps;
  final bool glutenFree;
  final String instructions;
  final bool ketogenic;
  final bool lowFodmap;
  final List<String> occasions;
  final bool sustainable;
  final bool vegan;
  final bool vegetarian;
  final bool veryHealthy;
  final bool veryPopular;
  final bool whole30;
  final int weightWatcherSmartPoints;
  final List<String> dishTypes;
  final String summary;
  // TODO extendedIngredients, winePairing

  Recipe(
      this.id,
      this.title,
      this.image,
      this.imageType,
      this.servings,
      this.readyInMinutes,
      this.license,
      this.sourceName,
      this.sourceUrl,
      this.spoonacularSourceUrl,
      this.aggregateLikes,
      this.healthScore,
      this.spoonacularScore,
      this.pricePerServing,
      this.cheap,
      this.creditsText,
      this.cuisines,
      this.dairyFree,
      this.diets,
      this.gaps,
      this.glutenFree,
      this.instructions,
      this.ketogenic,
      this.lowFodmap,
      this.occasions,
      this.sustainable,
      this.vegan,
      this.vegetarian,
      this.veryHealthy,
      this.veryPopular,
      this.whole30,
      this.weightWatcherSmartPoints,
      this.dishTypes,
      this.summary);
}
