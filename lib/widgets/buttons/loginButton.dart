import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key,
      required this.color,
      required this.anylogo,
      required this.touch,
      required this.text,
      required this.txtColor});
  final Color color;
  final Widget anylogo;
  final VoidCallback touch;
  final String text;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            anylogo,
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(color: txtColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
