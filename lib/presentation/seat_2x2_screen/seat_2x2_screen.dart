import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moovebe/presentation/seat_2x2_screen/widgets/card_driver.dart';

class Seat2x2Screen extends StatelessWidget {
  const Seat2x2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('KSRTC Swift Scania P-series')),
        backgroundColor: Colors.black,
        toolbarHeight: 100,
      ),
      body: Column(children: [
        Center(
          child: DriverCard(
            backgroundColor: Colors.black,
            heading: 'Rohit sharma',
            subHeading: 'P147832D3233',
            // imageBox: imageBox,
          ),
        )
      ]),
    );
  }
}
