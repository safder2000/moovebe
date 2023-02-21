import 'package:flutter/material.dart';

import 'package:moovebe/core/constents.dart';
import 'package:moovebe/presentation/seat_2x2_screen/widgets/card_driver.dart';
import 'package:moovebe/presentation/seat_2x2_screen/widgets/seats.dart';

class Seat2x2Screen extends StatelessWidget {
  const Seat2x2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('KSRTC Swift Scania P-series')),
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
        ),
        height_10,
        Container(
          height: MediaQuery.of(context).size.height * 0.62,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: Colors.black12,
            ),
            borderRadius: const BorderRadius.all(
                Radius.circular(5.0) //                 <--- border radius here
                ),
          ),
          child: Column(
            children: [
              height_20,
              height_10,
              const Driver_seat(),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Seat_single_column(),
                  const Seat_single_column(),
                  width_20,
                  width_20,
                  width_20,
                  const Seat_single_column(),
                  const Seat_single_column(),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}


// class Seat_1_column extends StatelessWidget {
//   const Seat_1_column({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         itemCount: 9,
//         itemBuilder: ((context, index) => Seat_1()));
//   }
// }