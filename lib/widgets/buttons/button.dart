import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.color,
      required this.touch,
      required this.text,
      required this.txtColor,
      required this.borderColor});
  final Color color;
  final VoidCallback touch;
  final String text;
  final Color txtColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(width: 1.0, color: borderColor),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: txtColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class SeeTableButton extends StatelessWidget {
  const SeeTableButton({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
           text,
            style: const TextStyle(
                color: CustomTheme.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.arrow_forward_ios,
            size: 17,
            color: CustomTheme.textColor,
          )
        ],
      ),
    );
  }
}
