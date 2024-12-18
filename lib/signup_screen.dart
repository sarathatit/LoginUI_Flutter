import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_design_three/signin_screen.dart';

import 'utils/gredient_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Color.fromARGB(255, 222, 134, 3),
              Color.fromARGB(255, 186, 113, 2)
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hello Sign in
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Create your \nAccount!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // Text Fields
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username TextField
                    const Text(
                      "UserName",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    // Email TextField
                    const Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    // PassWord TextField
                    const Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.password,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    // Sign in Button
                    GradientButton(
                      text: "Sign UP",
                      onPressed: () {},
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          text: "Already have an account? \n",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                          children: [
                            TextSpan(
                              text: "Sign In",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SigninScreen(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
