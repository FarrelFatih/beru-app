import 'dart:developer';

import 'package:dio/dio.dart';
import 'User.dart';

abstract class Services {
  static Future<List<User>> gets() async {
    try {
      // Map<String, dynamic> maps = {'id': 1, 'name': 'Farel'};
      // int id = maps['id'];
      Response<Map<String, dynamic>> response =
          await Dio().get('https://reqres.in/api/users?page=2');

      if (response.statusCode == 200) {
        List<User> newDatas = [];
        var jsonData = response.data!['data'];
        log('Services.gets response.data: ${jsonData}');
        for (Map<String, dynamic> element in jsonData) {
          log('Services.gets element: ${element}');
          newDatas.add(
            User(
              id: element['id'],
              name: '${element['first_name']} ${element['last_name']}',
              email: element['email'],
            ),
          );
        }
        return newDatas;
        // return User(
        //   id: response.data['data']['id'],
        //   name: response.data['data']['first_name'] +
        //       ' ' +
        //       response.data['data']['last_name'],
        //   email response.data['data']['email'],
        // );
      }

      return [];
    } catch (e) {
      log('error: ${e.toString()}');
      return [];
      // throw Exception(e.toString());
    }
  }

  // static Future<User?> getById(int id) async {
  //   try {
  //     // Map<String, dynamic> maps = {'id': 1, 'name': 'Farel'};
  //     // int id = maps['id'];
  //     var response = await Dio().get('https://reqres.in/api/users/$id');

  //     if (response.statusCode == 200) {
  //       return User(
  //         id: response.data['data']['id'],
  //         name: response.data['data']['first_name'] +
  //             ' ' +
  //             response.data['data']['last_name'],
  //         email: response.data['data']['email'],
  //       );
  //     }

  //     return null;
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }

  static Future<User?> createUser(
      String firstName, String lastName, String email) async {
    try {
      var response = await Dio().get('https://reqres.in/api/users', data: {
        'first_name': firstName,
        'last_name': lastName,
        'email': email
      });

      if (response.statusCode == 201) {
        return User(
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          name: response.data['first_name'] + ' ' + response.data['last_name'],
          email: response.data['email'],
        );
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
