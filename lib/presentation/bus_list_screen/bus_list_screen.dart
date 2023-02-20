import 'package:flutter/material.dart';

import 'package:moovebe/core/colors.dart';
import 'package:moovebe/core/constents.dart';
import 'package:moovebe/presentation/bus_list_screen/widgets/bus_tile.dart';
import 'package:moovebe/presentation/bus_list_screen/widgets/card_bus_list.dart';
import 'package:moovebe/presentation/bus_list_screen/widgets/bus_list_appbar.dart';

class BusListScreen extends StatelessWidget {
  const BusListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          // physics: ClampingScrollPhysics(),

          children: [
            const SimpleAppbar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // // physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
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
                  height_10,
                  height_5,
                  Row(
                    children: [
                      width_10,
                      const Text(
                        '21 Buses found',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ],
                  ),
                  height_10,
                  ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return BusTile();
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
