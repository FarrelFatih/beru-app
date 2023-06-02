import 'package:app_movie/widgets/LoginInterface.dart';
import 'package:app_movie/widgets/UserModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class LoginServices extends ILogin {
  @override
  Future<UserModel> login(String email, String password) async {
    // var dio = Dio().get();
    Response response = await Dio().post(
      'https://reqres.in/api/login',
      data: {
        'email': email,
        'password': password,
        // Atau menggunakan penulisan
        // final api = 'https://reqres.in/api/login';
        // final data = {'email': email, 'password': password};
        // final dio = Dio();
        // Response response;
        // response = await dio.post(api, data: data);
      },
    );
    if (response.statusCode == 200) {
      // return UserModel(
      //   email: email,
      //   token: response.data('data')
      // );
      //atau
      // final body = response.data;
      return UserModel(email: email, token: response.data['token']);
    } else {
      return response.data;
    }
  }
}
