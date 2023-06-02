import 'package:app_movie/widgets/UserModel.dart';
import 'package:dio/dio.dart';

abstract class ILogin {
  Future<UserModel> login(String email, String password) async {
    final api = 'https://reqres.in/api/login';
    final data = {'email': email, 'password': password};
    final dio = Dio();
    Response response;
    response = await dio.post(api, data: data);
    // Response response = await Dio().post(
    //   "https://reqres.in/api/login",
    //   data: {
    //     'email': email,
    //     'password': password,
    //   },
    // );
    response = await dio.post(api, data: data);

    if (response.statusCode == 200) {
      final body = response.data;
      return UserModel(email: email, token: response.data['token']);
    } else {
      return response.data;
    }
  }
}
