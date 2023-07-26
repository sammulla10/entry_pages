import 'package:flutter/material.dart';
import 'package:sev_oceans/screens/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();

  login(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

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
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xFF162534),
                  Color.fromARGB(255, 10, 57, 101)
                ])),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Register",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.white),
                            ),
                            Text(
                              "Create your account!",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
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
                        floatingLabelStyle:
                            const TextStyle(color: Colors.black, fontSize: 16),
                        labelText: "Username",
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Colors.black54),
                      ),
                    ),
                    sizebox20(),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter valid email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: TextFieldBorder(),
                        focusedBorder: TextFieldBorder(),
                        border: TextFieldBorder(),
                        floatingLabelStyle:
                            const TextStyle(color: Colors.black, fontSize: 20),
                        labelText: "Email",
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
                        floatingLabelStyle:
                            const TextStyle(color: Colors.black, fontSize: 20),
                        labelText: "Password",
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Colors.black54),
                      ),
                    ),
                    sizebox20(),
                    TextFormField(
                      controller: cpassword,
                      validator: (value) {
                        print(value != password.text);
                        print(value);
                        print(password.text);
                        if ((value == null || value.isEmpty) ||
                            value != password.text) {
                          return 'Password not same';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: TextFieldBorder(),
                        focusedBorder: TextFieldBorder(),
                        border: TextFieldBorder(),
                        floatingLabelStyle:
                            const TextStyle(color: Colors.black, fontSize: 20),
                        labelText: "Confirm Password",
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
                        "Register",
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
                          "Have an account? ",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                ),
                            child: Text(
                              'LogIn',
                              style: TextStyle(
                                  color: Color(0xFFAFD45E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ))
                      ],
                    ),
                  ],
                ),
              )
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
