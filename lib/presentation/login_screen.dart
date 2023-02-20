import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('lib/assets/Polygon_1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          TextFormField(
              decoration: const InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                border: InputBorder.none,
                label: Center(child: Text('Enter Username')),
              ),
              controller: passwordController,
              textAlign: TextAlign.center),
          const SizedBox(
            height: 18,
          ),
          TextFormField(
            decoration: const InputDecoration(
              fillColor: Colors.black12,
              filled: true,
              border: InputBorder.none,
              // OutlineInputBorder(
              //   borderSide:
              //       const BorderSide(color: Color.fromARGB(31, 254, 0, 0)),
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              label: Center(child: Text('Enter Password')),
            ),
            controller: passwordController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
