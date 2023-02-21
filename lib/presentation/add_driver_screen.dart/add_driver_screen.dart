import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moovebe/core/constents.dart';
import 'package:moovebe/presentation/add_driver_screen.dart/widgets/buttons.dart';

class AddDriverScreen extends StatelessWidget {
  const AddDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Add Driver')),
        backgroundColor: Colors.black,
        toolbarHeight: 100,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          height_20,
          height_20,
          height_20,
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                  label: Center(child: Text('Enter Name')),
                ),
                textAlign: TextAlign.center),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
              decoration: const InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                border: OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide.none,
                ),
                label: Center(child: Text('Enter License Number')),
              ),
              // controller: passwordController,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SaveButton(),
          )
        ]),
      ),
    );
  }
}
