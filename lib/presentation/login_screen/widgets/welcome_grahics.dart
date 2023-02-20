import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('lib/assets/Polygon_1.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Welcome',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 43,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Manage your Bus and Drivers',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 15,
              ),
            ]),
      ),
    );
  }
}
