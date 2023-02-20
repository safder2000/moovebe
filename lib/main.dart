import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/presentation/bus_list/bus_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'moovebe',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ).copyWith(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      home: BusListScreen(),
    );
  }
}
