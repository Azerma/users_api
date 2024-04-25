import 'package:dio/dio.dart';
import 'package:users_api/ui/pages/data/model/user_respons.dart';
import 'package:users_api/utils/constants/endpoints.dart';

class UserService {
  final _dio = Dio();

  Future<List<UserResponse>> getUsers() async {
    try {
      final response = await _dio.get(Endpoint.users);
      final List data = response.data;

      if (response.statusCode == 200) {
        return data.map((e) => UserResponse.fromJson(e)).toList();
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }
}
