import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moovebe/models/driver_Model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DriverRepository {
  var dio = Dio();

  fetchAllDrivers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('urlId');
    var token = prefs.getString('token');
    log(id.toString());
    try {
      Response response =
          await dio.get('http://flutter.noviindus.co.in/api/DriverApi/$id/',
              // data: {{}},
              options: Options(headers: {
                // "Content-Type": "application/json",
                "Authorization": "Bearer $token",
              }));
      final responseAsList = DriverList.fromJson(response.data);
      // log(responseAsList.mobile.toString());
      return responseAsList;
    } catch (e) {
      print(e);
    }
  }

  addNewDriver(
      {required String bus_id,
      required String driver_id,
      required BuildContext context}) async {
    final formData = FormData.fromMap({
      'bus_id': bus_id,
      'driver_id': driver_id,
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('urlId');
    var token = prefs.getString('token');
    final response = await dio.patch(
        'http://flutter.noviindus.co.in/api/AssignDriverApi/ Api Key/',
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }),
        data: formData);
  }
}
