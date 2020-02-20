import 'package:dio/dio.dart';
import 'package:zucc_helper/config/network_config.dart';

//dart -> 面向对象语言 最好封装成类
// {String method = "get"} 表示可选值 默认为get
class HttpRequest {
  //静态方法 每次就不需要创建一个实例
  static BaseOptions baseOptions = BaseOptions(baseUrl: BASE_URL, connectTimeout: TIME_OUT);

  static Future request(String url, {String method = "get", Map<String, dynamic> params}) async {
    //1.必须创建一个dio实例
    final dio = Dio(baseOptions);

    //2.发送网络请求
    Options options = Options(method: method);

    try {
      final res = await dio.request(url, queryParameters: params, options: options);
      return res.data;
    } on DioError catch (error) {
      throw error;
    }

  }
}