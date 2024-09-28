import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/widgets/buttons/button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isFormValid = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  void _validateForm() {
    setState(() {
      isFormValid =
          emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.black,
        elevation: 0, // Retire l'ombre
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Sign in with your email',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Your Email',
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              style: const TextStyle(
                color: CustomTheme.textColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Password',
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              style: const TextStyle(
                color: CustomTheme.textColor,
              ),
            ),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Forgot password",
                    style: const TextStyle(
                        color: CustomTheme.textColor,
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        decorationThickness: 0.5,
                        decorationColor: CustomTheme.textColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Action à effectuer lors du clic
                        print('Texte cliqué!');
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Button(
              color: isFormValid ? Colors.white : CustomTheme.greyAccent,
              touch: isFormValid
                  ? () {
                      // Action à effectuer lors du clic sur le bouton
                    }
                  : () {},
              text: 'SIGN IN',
              txtColor: isFormValid ? Colors.black : Colors.grey.shade500,
              borderColor: isFormValid ? Colors.white : CustomTheme.greyAccent,
            ),
          ],
        ),
      ),
    );
  }
}
