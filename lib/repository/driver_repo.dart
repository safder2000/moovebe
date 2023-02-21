import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moovebe/models/driver_Model.dart';
import 'package:moovebe/presentation/driver_list_screen/driver_list_screen.dart';
import 'package:moovebe/presentation/widgets/aleart_boxes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DriverRepository {
  static var dio = Dio();

  fetchAllDrivers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('urlId');
    var token = prefs.getString('token');
    log(id.toString());
    try {
      Response response = await dio.get(
        'http://flutter.noviindus.co.in/api/DriverApi/$id/',
        // data: {
        //   'delete-Key:': '287',
        // },
        options: Options(
          headers: {
            // "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      // final responseAsList = DriverModel.fromJson(response.data);

      final responseAsList = (response.data['driver_list'] as List).map((e) {
        return DriverList.fromJson(e);
      }).toList();
      log(responseAsList.toString());
      return responseAsList;
    } catch (e) {
      print(e);
    }
  }

  // Add New driver ➕  ======================

  static addNewDriver(
      {required String name,
      required String licence,
      required BuildContext context}) async {
    final formData = FormData.fromMap({
      'name': name,
      'mobile': '8086212344',
      'license_no': licence,
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('urlId');
    var token = prefs.getString('token');
    final response =
        await dio.post('http://flutter.noviindus.co.in/api/DriverApi/$id/',
            options: Options(headers: {
              "Authorization": "Bearer $token",
            }),
            data: formData);
    showAlertDialog(
      context: context,
      title: 'Driver Added',
      msg: 'New Driver added successfully ',
      task: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (BuildContext context) => DriverListSreen()));
      },
    );
  }

  // Delete driver  🔫 ======================

  static deleteDriver({required String driver_id}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var id = prefs.getString('urlId');
    var token = prefs.getString('token');
    final formData = FormData.fromMap({
      'driver_id': driver_id,
    });

    try {
      log('id$id');
      final response =
          await dio.delete('http://flutter.noviindus.co.in/api/DriverApi/$id/',
              options: Options(headers: {
                "Authorization": "Bearer $token",
              }),
              data: formData);
      log('deleted');
      log(response.toString());
    } catch (e) {
      print(e);
    }
  }
}
