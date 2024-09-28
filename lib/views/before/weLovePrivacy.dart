import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/string.dart';

class WeLovePrivacy extends StatelessWidget {
  const WeLovePrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(height: 15),
                const Text(
                  'We love Privacy !',
                  style: TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 37,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  AppData.weLovePrivacyText,
                  style: TextStyle(
                      color: CustomTheme.textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed('/favorite_team');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        'OKAY !',
                        style: TextStyle(
                            color: CustomTheme.bgColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/demo_page');
                  },
                  child: Container(
                    height: 25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        'INFOS ET SETTINGS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
