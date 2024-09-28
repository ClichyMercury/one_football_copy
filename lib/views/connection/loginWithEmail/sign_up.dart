import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/views/connection/loginWithEmail/createAccount.dart';
import 'package:one_football_copy/widgets/buttons/button.dart';
import 'package:one_football_copy/widgets/myWidgets/fadeRoute.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
              'Create your OneFootball account',
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
              onTap: () {
                Navigator.of(context)
                    .push(FadeRoute(page: const CreateAccount()));
              },
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
              onSubmitted: (String value) {
                if (kDebugMode) {
                  print("Texte validé : $value");
                }
              },
            ),
            const Text(
              'Please provide a valid email address',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Password',
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              onTap: () {
                Navigator.of(context)
                    .push(FadeRoute(page: const CreateAccount()));
              },
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
              onSubmitted: (String value) {
                if (kDebugMode) {
                  print("Texte validé : $value");
                }
              },
            ),
            const Text(
              'Your password must contain at least 8 characters, 1 capital letter and 1 number',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 35),
            Button(
              color: CustomTheme.greyAccent,
              touch: () {
                Get.toNamed("/create_account");
              },
              text: 'CREATE ACCOUNT',
              txtColor: Colors.grey.shade500,
              borderColor: CustomTheme.greyAccent,
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(child: Divider(color: Colors.white24)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'or',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(child: Divider(color: Colors.white24)),
              ],
            ),
            const SizedBox(height: 20),
            Button(
              color: Colors.black,
              touch: () {
                Get.toNamed("/sign_in");
              },
              text: 'SIGN IN',
              txtColor: CustomTheme.textColor,
              borderColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
