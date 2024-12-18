import 'package:flutter/material.dart';
import 'package:login_design_three/signin_screen.dart';
import 'package:login_design_three/signup_screen.dart';
import 'package:login_design_three/utils/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.only(top: 120),
        height: height,
        width: width,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            ClipOval(
              child: Image.asset(
                height: 90,
                width: 90,
                logoImage,
                fit: BoxFit.cover,
              ),
            ),

            // Title
            const Text(
              "FITNESS CLUB",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Welcome back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 30,
            ),

            // SIGN IN Button
            SizedBox(
              width: width - 60,
              height: 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white, width: 2)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // SIGN UP Button
            SizedBox(
              width: width - 60,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Sign UP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ),

            SizedBox(
              height: height / 8,
            ),

            // Login With social media
            const Text(
              "Login with social media",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white),
            ),

            const SizedBox(
              height: 10,
            ),

            // Social Media Icons

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Image.asset(
                    instaIcon,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Image.asset(
                    facebookIcon,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Image.asset(
                    googleIcon,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
