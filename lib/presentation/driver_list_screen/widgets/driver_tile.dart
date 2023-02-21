import 'package:flutter/material.dart';
import 'package:moovebe/core/colors.dart';

class DriverTile extends StatelessWidget {
  const DriverTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: const [
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Rohit Sharma',
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
                    'Licn no: PS34434K87',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Spacer(),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 40,
              // width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {},
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
