import 'package:flutter/material.dart';

class BusListCard extends StatelessWidget {
  BusListCard({
    Key? key,
    required this.backgroundColor,
    required this.heading,
    required this.subHeading,
    required this.imageBox,
  }) : super(key: key);
  Color backgroundColor;
  String heading;
  String subHeading;
  Widget imageBox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.48,
      child: Card(
        color: backgroundColor,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                subHeading,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                imageBox,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
