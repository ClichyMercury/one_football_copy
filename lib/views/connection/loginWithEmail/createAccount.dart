import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/widgets/buttons/button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPolicyAccepted = false;
  bool isNewsAccepted = false;
  bool isFormValid = false;

  final FocusNode emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Ajouter des listeners aux contrôleurs
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(emailFocusNode);
    });
  }

  void _validateForm() {
    setState(() {
      isFormValid = emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          isPolicyAccepted &&
          isNewsAccepted;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
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
            const SizedBox(height: 50),
            const Text(
              'Your Email',
              style: TextStyle(color: Colors.white),
            ),
            TextField(
              focusNode: emailFocusNode,
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
            const Text(
              'Your password must contain at least 8 characters, 1 capital letter and 1 number',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 35),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.white,
                  value: isNewsAccepted,
                  onChanged: (value) {
                    setState(() {
                      isNewsAccepted = value!;
                      _validateForm();
                    });
                  },
                ),
                const Text(
                  "I want to be kept up to date with\nOneFootball news, products and promotions.",
                  style: TextStyle(color: CustomTheme.textColor, fontSize: 13),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.white,
                  value: isPolicyAccepted,
                  onChanged: (value) {
                    setState(() {
                      isPolicyAccepted = value!;
                      _validateForm();
                    });
                  },
                ),
                Text.rich(
                  TextSpan(
                    text: 'I accept the ',
                    style: const TextStyle(
                      color: CustomTheme.textColor,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Terms and Conditions \n",
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
                            if (kDebugMode) {
                              print('Texte cliqué!');
                            }
                          },
                      ),
                      const TextSpan(
                        text: "and I read the ",
                        style: TextStyle(
                          color: CustomTheme.textColor,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy policy",
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
                            if (kDebugMode) {
                              print('Texte cliqué!');
                            }
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Button(
              color: isFormValid ? Colors.white : CustomTheme.greyAccent,
              touch: isFormValid
                  ? () {
                      // Action à effectuer lors du clic sur le bouton
                    }
                  : () {},
              text: 'CREATE ACCOUNT',
              txtColor: isFormValid ? Colors.black : Colors.grey.shade500,
              borderColor: isFormValid ? Colors.white : CustomTheme.greyAccent,
            ),
          ],
        ),
      ),
    );
  }
}
