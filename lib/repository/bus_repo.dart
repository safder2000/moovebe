import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:moovebe/models/bus_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BusRepository {
  static var dio = Dio();

  static fetchAllBuses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('urlId');
    var token = prefs.getString('token');
    log(id.toString());
    try {
      Response response = await dio.get(
        'http://flutter.noviindus.co.in/api/BusApi/$id/',
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
        return BusModel.fromJson(e);
      }).toList();
      log(responseAsList.toString());
      return responseAsList;
    } catch (e) {
      print(e);
    }
  }
}
