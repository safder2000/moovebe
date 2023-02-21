import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moovebe/core/colors.dart';
import 'package:moovebe/core/constents.dart';
import 'package:moovebe/presentation/driver_list_screen/widgets/buttons.dart';
import 'package:moovebe/presentation/driver_list_screen/widgets/driver_tile.dart';

class DriverListSreen extends StatelessWidget {
  const DriverListSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Center(child: Text('Driver List')),
        backgroundColor: Colors.black,
        actions: [width_20],
      ),
      // TODO: disable scroll animation from this list view 👇
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          height_10,
          height_5,
          Row(
            children: [
              width_10,
              const Text(
                '21 Drivers found',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black54),
              ),
            ],
          ),
          height_10,
          Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const DriverTile();
                  }),
            ),
            //TODO: button might go out of screen .. check with defferent aspect ratio 📐
            const AddButton(),
          ])
        ],
      ),
    );
  }
}
