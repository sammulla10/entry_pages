import 'package:flutter/material.dart';
import 'package:sev_oceans/screens/register.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  login(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  final base_color = 0xFFAFD45E;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFF162534),
                  Color.fromARGB(255, 10, 57, 101)
                ])),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Log in",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                            ),
                            Text(
                              "Enter your Credentials",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              sizebox20(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(children: [
                  TextFormField(
                    controller: username,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: TextFieldBorder(),
                      focusedBorder: TextFieldBorder(),
                      border: TextFieldBorder(),
                      floatingLabelStyle: const TextStyle(
                          color: Color(0xFFAFD45E), fontSize: 20),
                      labelText: "Username",
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                  ),
                  sizebox20(),
                  TextFormField(
                    controller: password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: TextFieldBorder(),
                      focusedBorder: TextFieldBorder(),
                      border: TextFieldBorder(),
                      floatingLabelStyle: const TextStyle(
                          color: Color(0xFFAFD45E), fontSize: 20),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: Colors.black54),
                    ),
                  ),
                  sizebox20(),
                  MaterialButton(
                    onPressed: () => login(context),
                    minWidth: double.infinity,
                    padding: const EdgeInsets.all(10),
                    color: Color(0xFFAFD45E),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Color(0xFFAFD45E),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ))
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      )),
    );
  }

  SizedBox sizebox20() {
    return const SizedBox(
      height: 20,
    );
  }

  OutlineInputBorder TextFieldBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFAFD45E), width: 1),
        borderRadius: BorderRadius.circular(15));
  }
}
