import 'package:api_demo/model/apimodel.dart';
import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();
  Future<List<ApiModel>> fetchimages() async {
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/photos');
      print(response.data);

      List<ApiModel> data = [];
      if (response.statusCode == 200) {
        final rawData = response.data;
        for (var item in rawData) {
          data.add(ApiModel.fromJson(item));
        }
        return data;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    throw Exception('THROW MASSEGE');
  }
}
