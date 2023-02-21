import 'package:flutter/material.dart';
import 'package:moovebe/core/constents.dart';

// single seat =================================

class Single_seat extends StatelessWidget {
  Single_seat({
    this.color = const Color.fromARGB(255, 252, 21, 59),
    Key? key,
  }) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3),
      child: InkWell(
        child: SizedBox(
          height: 38,
          width: 43,
          child: Image.asset(
            'lib/assets/img/seat.png',
            fit: BoxFit.contain,
            color: color,
          ),
        ),
      ),
    );
  }
}

// Single column ============================

class Seat_single_column extends StatelessWidget {
  const Seat_single_column({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Single_seat(),
        Single_seat(),
        Single_seat(),
        Single_seat(),
        Single_seat(),
        Single_seat(),
        Single_seat(),
        Single_seat(),
        Single_seat(),
      ],
    );
  }
}

//Driver seat ========================

class Driver_seat extends StatelessWidget {
  const Driver_seat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Single_seat(
          color: const Color.fromARGB(0, 0, 0, 0),
        ),
        Single_seat(
          color: const Color.fromARGB(0, 0, 0, 0),
        ),
        width_20,
        width_20,
        width_20,
        Single_seat(
          color: const Color.fromARGB(0, 0, 0, 0),
        ),
        Single_seat(
          color: Colors.black,
        ),
      ],
    );
  }
}
