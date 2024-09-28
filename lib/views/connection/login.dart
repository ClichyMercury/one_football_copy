import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/widgets/buttons/loginButton.dart';

class Connextion extends StatefulWidget {
  const Connextion({super.key});

  @override
  State<Connextion> createState() => _ConnextionState();
}

class _ConnextionState extends State<Connextion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.bgColor,
      body: Stack(
        children: [
          // Background Image
          /* Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Remplace par l'image de fond
                fit: BoxFit.cover,
              ),
            ),
          ), */
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  const Stack(
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Text(
                              '1.',
                              style: TextStyle(
                                fontSize: 100,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'MAKE ONEFOOTBALL YOUR OWN FOOTBALL HUB',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'One click sign-up saves your own personal match and team experience.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  LoginButton(
                    anylogo: AnyLogo.tech.google.image(height: 20),
                    text: 'CONTINUE WITH GOOGLE',
                    color: Colors.white,
                    txtColor: Colors.black,
                    touch: () {
                      Get.toNamed("/root");
                    },
                  ),
                  const SizedBox(height: 15),
                  LoginButton(
                    anylogo: const Icon(
                      Icons.email_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                    text: 'CONTINUE WITH EMAIL',
                    color: Colors.grey[850]!,
                    txtColor: Colors.white,
                    touch: () {
                      Get.toNamed("/sign_up");
                    },
                  ),
                  const SizedBox(height: 15),
                  LoginButton(
                    anylogo: AnyLogo.media.facebook.image(height: 20),
                    text: 'CONTINUE WITH FACEBOOK',
                    color: const Color(0XFF4267B2),
                    txtColor: Colors.white,
                    touch: () {
                      Get.toNamed("/root");
                    },
                  ),
                  const SizedBox(height: 15),
                  LoginButton(
                    anylogo: AnyLogo.tech.apple.image(height: 20),
                    text: 'CONTINUE WITH APPLE',
                    color: Colors.white,
                    txtColor: Colors.black,
                    touch: () {
                      Get.toNamed("/root");
                    },
                  ),
                  const Spacer(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
