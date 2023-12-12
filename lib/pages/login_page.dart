import 'package:flutter/material.dart';
import 'package:task2_lvl2/pages/custom_buttom.dart';
import 'package:task2_lvl2/pages/custom_text_field.dart';
import 'package:task2_lvl2/pages/registeration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String id = 'login page';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: 75,
              ),
              Image.asset(
                'lib/assets/Blue-lotus-png.png',
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'my App ',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontFamily: 'pacifico',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              const Row(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormTextField(
                onChanged: (data) {
                  email = data;
                },
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFormTextField(
                obscureText: true,
                onChanged: (data) {
                  password = data;
                },
                hintText: 'Password',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButon(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});

                    isLoading = false;
                    setState(() {});
                  }
                },
                text: 'LOGIN',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'dont\'t have an account?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: const Text(
                      '  Register',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
