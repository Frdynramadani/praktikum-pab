import 'package:dio/dio.dart';

class ApiController {
  Future<List<dynamic>> getdatas() async {
    final Response = await Dio().get('https://saiyaapi.site' + '/cnth/prak');

    final datas = Response.data['payload'];
    print(datas);
    return datas;
  }
}
