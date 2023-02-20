import 'package:flutter/material.dart';

class SimpleAppbar extends StatelessWidget {
  const SimpleAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Center(
        child: SizedBox(
          child: Image.asset(
            'lib/assets/moovbe_Logo.png',
            fit: BoxFit.contain,

            height: 45,

            // and width here
          ),
        ),
      ),
    );
  }
}
