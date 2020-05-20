// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://wwww.dev.blendtv.api';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getHome(apiKey, language) async {
    ArgumentError.checkNotNull(apiKey, 'apiKey');
    ArgumentError.checkNotNull(language, 'language');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'api_key': apiKey,
      r'language': language
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('demo',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Task.fromJson(_result.data);
    return Future.value(value);
  }
}
