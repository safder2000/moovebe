import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/application/auth/auth_repository.dart';

import 'package:moovebe/presentation/add_driver_screen.dart/add_driver_screen.dart';
import 'package:moovebe/presentation/bus_list_screen/bus_list_screen.dart';
import 'package:moovebe/presentation/login_screen/login_screen.dart';
import 'package:moovebe/presentation/seat_2x2_screen/seat_2x2_screen.dart';
import 'package:moovebe/presentation/spash_screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/Login_bloc/login_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var isLogin = prefs.getBool('login');
  runApp((MyApp(
    isLogedIn: isLogin ?? false,
  )));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.isLogedIn});
  bool isLogedIn;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRepository()),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'moovebe',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ).copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        ),
        home: isLogedIn ? BusListScreen() : const SplashScreen(),
      ),
    );
  }
}
