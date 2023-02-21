import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/application/bloc/login_bloc.dart';
import 'package:moovebe/presentation/add_driver_screen.dart/add_driver_screen.dart';
import 'package:moovebe/presentation/login_screen/login_screen.dart';
import 'package:moovebe/presentation/seat_2x2_screen/seat_2x2_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
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
        home: LoginPage(),
      ),
    );
  }
}
