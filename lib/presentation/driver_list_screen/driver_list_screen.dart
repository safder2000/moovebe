import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moovebe/application/Driver_bloc/driver_bloc.dart';
import 'package:moovebe/core/colors.dart';
import 'package:moovebe/core/constents.dart';
import 'package:moovebe/presentation/driver_list_screen/widgets/buttons.dart';
import 'package:moovebe/presentation/driver_list_screen/widgets/driver_tile.dart';

class DriverListSreen extends StatelessWidget {
  const DriverListSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverBloc, DriverState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            title: const Center(child: Text('Driver List')),
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                  onPressed: () async {
                    BlocProvider.of<DriverBloc>(context).add(FetchAllDrivers());
                  },
                  icon: Icon(Icons.repeat_rounded))
            ],
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
                  Text(
                    '${state.driverModel.driverList!.length} Drivers found',
                    style: const TextStyle(
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
                      itemCount: state.driverModel.driverList!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return DriverTile(
                          license: state
                              .driverModel.driverList![index].licenseNo
                              .toString(),
                          name: state.driverModel.driverList![index].name ??
                              'No name ',
                          id: state.driverModel.driverList![index].id
                              .toString(),
                        );
                      }),
                ),
                //TODO: button might go out of screen .. check with defferent aspect ratio 📐
                const AddButton(),
              ])
            ],
          ),
        );
      },
    );
  }
}
