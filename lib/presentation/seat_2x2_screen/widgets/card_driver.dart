import 'package:flutter/material.dart';
import 'package:moovebe/core/constents.dart';

class DriverCard extends StatelessWidget {
  DriverCard({
    Key? key,
    required this.backgroundColor,
    required this.heading,
    required this.subHeading,
    // required this.imageBox,
  }) : super(key: key);
  Color backgroundColor;
  String heading;
  String subHeading;
  // Widget imageBox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        color: backgroundColor,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    heading,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                height_10,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'License no: $subHeading',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 130,
              width: 130,
              child: Image.asset(
                'lib/assets/img/driver.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
