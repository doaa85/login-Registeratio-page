import 'package:flutter/material.dart';
import 'package:task2_lvl2/pages/custom_buttom.dart';
import 'package:task2_lvl2/pages/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

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
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 20,
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
                  } else {}
                },
                text: 'REGISTER',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'already have an account?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      '  Login',
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
