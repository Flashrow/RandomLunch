// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipesModel _$$_RecipesModelFromJson(Map<String, dynamic> json) =>
    _$_RecipesModel(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesModelToJson(_$_RecipesModel instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
