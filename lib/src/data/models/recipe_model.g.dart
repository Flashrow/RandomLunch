// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      imageType: json['imageType'] as String,
      servings: json['servings'] as int,
      readyInMinutes: json['readyInMinutes'] as int,
      license: json['license'] as String,
      sourceName: json['sourceName'] as String,
      sourceUrl: json['sourceUrl'] as String,
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String,
      aggregateLikes: json['aggregateLikes'] as int,
      healthScore: (json['healthScore'] as num).toDouble(),
      spoonacularScore: (json['spoonacularScore'] as num).toDouble(),
      pricePerServing: (json['pricePerServing'] as num).toDouble(),
      cheap: json['cheap'] as bool,
      creditsText: json['creditsText'] as String,
      cuisines:
          (json['cuisines'] as List<dynamic>).map((e) => e as String).toList(),
      dairyFree: json['dairyFree'] as bool,
      diets: (json['diets'] as List<dynamic>).map((e) => e as String).toList(),
      gaps: json['gaps'] as String,
      glutenFree: json['glutenFree'] as bool,
      instructions: json['instructions'] as String,
      ketogenic: json['ketogenic'] as bool,
      lowFodmap: json['lowFodmap'] as bool,
      occasions:
          (json['occasions'] as List<dynamic>).map((e) => e as String).toList(),
      sustainable: json['sustainable'] as bool,
      vegan: json['vegan'] as bool,
      vegetarian: json['vegetarian'] as bool,
      veryHealthy: json['veryHealthy'] as bool,
      veryPopular: json['veryPopular'] as bool,
      whole30: json['whole30'] as bool,
      weightWatcherSmartPoints: json['weightWatcherSmartPoints'] as int,
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
      'servings': instance.servings,
      'readyInMinutes': instance.readyInMinutes,
      'license': instance.license,
      'sourceName': instance.sourceName,
      'sourceUrl': instance.sourceUrl,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
      'aggregateLikes': instance.aggregateLikes,
      'healthScore': instance.healthScore,
      'spoonacularScore': instance.spoonacularScore,
      'pricePerServing': instance.pricePerServing,
      'cheap': instance.cheap,
      'creditsText': instance.creditsText,
      'cuisines': instance.cuisines,
      'dairyFree': instance.dairyFree,
      'diets': instance.diets,
      'gaps': instance.gaps,
      'glutenFree': instance.glutenFree,
      'instructions': instance.instructions,
      'ketogenic': instance.ketogenic,
      'lowFodmap': instance.lowFodmap,
      'occasions': instance.occasions,
      'sustainable': instance.sustainable,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'veryHealthy': instance.veryHealthy,
      'veryPopular': instance.veryPopular,
      'whole30': instance.whole30,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'dishTypes': instance.dishTypes,
      'summary': instance.summary,
    };
