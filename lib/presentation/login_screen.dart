import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          //welcome graphics...top
          WelcomeContainer(),
          const SizedBox(
            height: 45,
          ),
          //TODO: make corener rounded 😑
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  border: InputBorder.none,
                  label: Center(child: Text('Enter Username')),
                ),
                controller: passwordController,
                textAlign: TextAlign.center),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextFormField(
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
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
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
