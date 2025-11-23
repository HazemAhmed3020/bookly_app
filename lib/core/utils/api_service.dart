
import 'package:dio/dio.dart' as dio;

class ApiService{
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final dio.Dio myDio;
  ApiService(this.myDio);

  Future<Map<String , dynamic>> getBooks({required String endPoint}) async {
  var response = await myDio.get('$_baseUrl$endPoint');

    return response.data;
  }


}