import 'package:dio/dio.dart';
import 'package:flutterapp1/douban/service/Config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);



  static Future<T>  request<T>(String url,
      {String method = "get",
      Map<String, dynamic> params,
      Interceptor inter}) async {

    final options = Options(method: method);
    // 全局拦截器
    // 创建默认的全局拦截器
    Interceptor dInter = InterceptorsWrapper(
        onRequest: (options) {
          print("请求拦截");
          return options;
        },
        onResponse: (response) {
          print("响应拦截");
          print("响应数据：${response.data}");
          return response;
        },
        onError: (err) {
          print("错误拦截");
          return err;
        }
    );
    List<Interceptor> inters = [dInter];

    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }

    // 统一添加到拦截器中
    dio.interceptors.addAll(inters);
    try {
      Response response = await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch(e) {
      return Future.error(e);
    }


  }
}
