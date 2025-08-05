import 'package:birdie/components/my_button.dart';
import 'package:birdie/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({
    super.key,
    required this.onTap,
  });

  // text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo
                  Icon(
                    Icons.person,
                    size: 80,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(height: 25),
                  // app name
                  const Text(
                    'B I R D I E',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 50),
                  // username textfield
                  MyTextfield(
                    hintText: 'Username',
                    obscureText: false,
                    controller: usernameController,
                  ),
                  const SizedBox(height: 10),
                  // email textfield
                  MyTextfield(
                    hintText: 'Email',
                    obscureText: false,
                    controller: emailController,
                  ),
                  const SizedBox(height: 10),
                  // password textfield
                  MyTextfield(
                    hintText: 'Password',
                    obscureText: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 10),
                  //confirm password textfield
                  MyTextfield(
                    hintText: 'Confirm Password',
                    obscureText: true,
                    controller: confirmPasswordController,
                  ),

                  // forgot password
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       'Forgot Password?',
                  //       style: TextStyle(
                  //           color:
                  //               Theme.of(context).colorScheme.inversePrimary),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: 25),
                  // register button
                  MyButton(
                    text: 'Register',
                    onTap: register,
                  ),
                  const SizedBox(height: 25),
                  // already have an account? Login here
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          'Login here',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
