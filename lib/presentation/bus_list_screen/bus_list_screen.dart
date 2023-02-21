import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moovebe/application/Driver_bloc/driver_bloc.dart';
import 'package:moovebe/application/Login_bloc/login_bloc.dart';
import 'package:moovebe/application/bus_bloc/bus_bloc.dart';

import 'package:moovebe/core/colors.dart';
import 'package:moovebe/core/constents.dart';
import 'package:moovebe/presentation/bus_list_screen/widgets/bus_tile.dart';
import 'package:moovebe/presentation/bus_list_screen/widgets/card_bus_list.dart';
import 'package:moovebe/presentation/bus_list_screen/widgets/bus_list_appbar.dart';
import 'package:moovebe/presentation/driver_list_screen/driver_list_screen.dart';
import 'package:moovebe/presentation/seat_2x2_screen/seat_2x2_screen.dart';

class BusListScreen extends StatelessWidget {
  const BusListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BusBloc>(context).add(FetchAllBus());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: width_10,
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          title: Center(
            child: SizedBox(
              child: Image.asset(
                'lib/assets/img/moovbe_Logo.png',
                fit: BoxFit.contain,

                height: 45,

                // and width here
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context)
                      .add(Loginout(context: context));
                },
                icon: Icon(Icons.logout_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<BusBloc, BusState>(
            builder: (context, state) {
              return ListView(
                // mainAxisSize: MainAxisSize.min,
                // // physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: BusListCard(
                          backgroundColor: defaultRed,
                          heading: 'Bus',
                          subHeading: 'Manage your Buses',
                          imageBox: SizedBox(
                            height: 130,
                            width: 130,
                            child: Image.asset(
                              'lib/assets/img/yellow_bus.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          BlocProvider.of<DriverBloc>(context)
                              .add(FetchAllDrivers());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      DriverListSreen()));
                        },
                        child: BusListCard(
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
                      ),
                    ],
                  ),
                  height_10,
                  height_5,
                  Row(
                    children: [
                      width_10,
                      Text(
                        '${state.driverModel.busList!.length} Buses found',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  height_20,
                  state.driverModel.busList!.isEmpty
                      ? SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              Center(
                                child: const Text(
                                  "NO Buses Found",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ),
                              height_10,
                              const Text(
                                "would you like a demo",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              height_20,
                              OutlinedButton(
                                onPressed: () {
                                  context.read<BusBloc>().add(DemoSize());
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0))),
                                ),
                                child: const Text(
                                  "Demo",
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.driverModel.busList!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return BusTile();
                              }),
                        )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
