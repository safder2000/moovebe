import 'package:flutter/material.dart';
import 'package:moovebe/core/colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Add Driver',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: defaultRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }
}
