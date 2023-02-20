import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moovebe/core/colors.dart';
import 'package:moovebe/presentation/bus_list/widgets/card_bus_list.dart';
import 'package:moovebe/presentation/bus_list/widgets/bus_list_appbar.dart';

class BusListScreen extends StatelessWidget {
  const BusListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SimpleAppbar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BusListCard(
                      backgroundColor: defaultRed,
                      heading: 'Bus',
                      subHeading: 'Manage your Buses',
                      imageBox: SizedBox(
                        height: 130,
                        width: 130,
                        child: Image.asset(
                          'lib/assets/yellow_bus.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    BusListCard(
                      backgroundColor: Colors.black,
                      heading: 'Driver',
                      subHeading: 'Manage your Driver',
                      imageBox: SizedBox(
                        height: 130,
                        width: 130,
                        child: Image.asset(
                          'lib/assets/driver.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '21 Buses where found',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
