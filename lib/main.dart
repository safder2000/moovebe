import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/presentation/add_driver_screen.dart/add_driver_screen.dart';
import 'package:moovebe/presentation/seat_2x2_screen/seat_2x2_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'moovebe',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ).copyWith(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      home: Seat2x2Screen(),
    );
  }
}
