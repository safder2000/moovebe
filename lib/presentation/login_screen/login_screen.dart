import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/application/Login_bloc/login_bloc.dart';
import 'package:moovebe/core/colors.dart';
import 'package:moovebe/presentation/login_screen/widgets/welcome_grahics.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController nameController = TextEditingController();
    // TextEditingController passwordController = TextEditingController();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      //welcome graphics...top
                      WelcomeContainer(),
                      const SizedBox(
                        height: 45,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            onChanged: ((value) => context
                                .read<LoginBloc>()
                                .add(LoginUsernameChanged(username: value))),
                            decoration: const InputDecoration(
                              fillColor: Colors.black12,
                              filled: true,
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none,
                              ),
                              label: Center(child: Text('Enter Username')),
                            ),
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            onChanged: ((value) => context
                                .read<LoginBloc>()
                                .add(LoginPasswordChanged(password: value))),
                            decoration: const InputDecoration(
                              fillColor: Colors.black12,
                              filled: true,
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none,
                              ),
                              label: Center(child: Text('Enter Password')),
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<LoginBloc>()
                                  .add(LoginSubmitted(context: context));
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: defaultRed,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
