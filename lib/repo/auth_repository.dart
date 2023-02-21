import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moovebe/core/strings.dart';
import 'package:moovebe/models/login_Model.dart';
import 'package:moovebe/presentation/bus_list_screen/bus_list_screen.dart';
import 'package:moovebe/presentation/spash_screen/splash_screen.dart';
import 'package:moovebe/presentation/widgets/aleart_boxes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  Future<void> login(
      {required String username,
      required String password,
      required BuildContext context}) async {
    //in case
    String checkUsername = 'admin_user';
    String checkPassword = '123admin789';
    var dio = Dio();
    try {
      //suskasfullyy failed attempts 😐

      // var response = await dio.post(
      //     "http://flutter.noviindus.co.in/api/LoginApi",
      //     data: {"username": "admin_user", "password": "123admin789"});

      // Response response = await dio.post(
      //   "http://flutter.noviindus.co.in/api/LoginApi",
      //   options: Options(
      //       headers: {"username": "admin_user", "password": "123admin789"}),
      // );
//-----------------------------------------
      //got this from dio doc in pub.dev 👇"Perfecto"👌
      final formData = FormData.fromMap({
        'username': username,
        'password': password,
      });
      final response = await dio
          .post('http://flutter.noviindus.co.in/api/LoginApi', data: formData);
//------------------------------------------
      final responseAsList = LoginResponse.fromJson(response.data);
      if (responseAsList.status ?? false) {
        saveData(responseAsList);
        log('login success');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => BusListScreen()));
      } else {
        showAlertDialog(
            context: context,
            title: 'Login faild',
            msg: 'Wrong Username/Password');
      }

      log(responseAsList.status.toString());
    } catch (e) {
      print(e);
    }
    await Future.delayed(Duration(seconds: 3));
    throw Exception('failed log in');
  }

  logout(context) {
    showAlertDialog(
        context: context,
        title: 'Logging out',
        msg: 'all datas will be cleared \n (there is no going back 🥲)',
        task: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => SplashScreen()));
        });
    clearData();
  }
}

saveData(LoginResponse data) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('login', true);
  prefs.setString('token', '${data.access}');
  prefs.setString('refresh', '${data.refresh}');
  prefs.setString('urlId', '${data.urlId}');
}

clearData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('login', false);
  prefs.setString('token', '');
  prefs.setString('refresh', '');
  prefs.setString('urlId', '');
}
