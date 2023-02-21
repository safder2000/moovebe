import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moovebe/application/Driver_bloc/driver_bloc.dart';
import 'package:moovebe/core/colors.dart';
import 'package:moovebe/core/constents.dart';
import 'package:moovebe/repository/driver_repo.dart';

class DriverTile extends StatelessWidget {
  DriverTile({
    required this.name,
    required this.license,
    required this.id,
    Key? key,
  }) : super(key: key);
  String name;
  String license;
  String id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DriverBloc, DriverState>(
      builder: (context, state) {
        return SizedBox(
          height: 92,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Card(
            color: Colors.white,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 3,
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.black12,
                  child: const Center(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.white10,
                        backgroundImage: AssetImage(
                          'lib/assets/img/driver.png',
                        ),
                        // child: Image.asset(
                        //   'lib/assets/img/driver.png',
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '$name',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'License no: $license',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 40,
                  // width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<DriverBloc>(context)
                          .add(DeleteDriver(driverId: id));
                      // DriverRepository.deleteDriver(driver_id: id);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: defaultRed,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                    ),
                    child: const Text(
                      'Delete',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
                width_10
              ],
            ),
          ),
        );
      },
    );
  }
}
