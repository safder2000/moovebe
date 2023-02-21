import 'package:dio/dio.dart';
import 'package:moovebe/core/strings.dart';
import 'package:moovebe/models/LoginResponse.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  Future<void> login(
      {required String username, required String password}) async {
    var dio = Dio();
    try {
      var response = await dio.post("$baseUrl/LoginApi",
          data: {"username": username, "password": password} /*  */
          );
      final responseAsList = LoginResponse.fromJson(response.data);
      saveData(responseAsList);
    } catch (e) {
      print(e);
    }
    await Future.delayed(Duration(seconds: 3));
    print('logged in');
    throw Exception('failed log in');
  }
}

saveData(LoginResponse data) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('login', true);
  prefs.setString('token', '${data.access}');
  prefs.setString('refresh', '${data.refresh}');
  prefs.setString('urlId', '${data.urlId}');
}
