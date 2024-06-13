import 'package:dio/dio.dart';
import 'package:ui_screens/pages/cache/cache_helper.dart';
import 'package:ui_screens/pages/core/api/end_ponits.dart';


class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? '${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
