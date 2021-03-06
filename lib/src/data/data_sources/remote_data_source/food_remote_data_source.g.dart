// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _FoodRemoteDataSource implements FoodRemoteDataSource {
  _FoodRemoteDataSource(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<FoodTriviaModel> getRandomFoodTrivia() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FoodTriviaModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/food/trivia/random',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FoodTriviaModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RecipesModel> getRandomRecipe(
      {required limitLicense, required tags, required number}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = limitLicense;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RecipesModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/recipes/random',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RecipesModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
