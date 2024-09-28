import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/svg_icons.dart';

class TimeSelector extends StatelessWidget {
  final String date;
  final bool isSelected;
  final VoidCallback onTap;

  const TimeSelector({
    super.key,
    required this.date,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: isSelected
                ? CustomTheme.textColor
                : CustomTheme.textColor.withOpacity(0.5),
          ),
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            date,
            style: const TextStyle(
              color: CustomTheme.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: const Row(
        children: [
          SvgIcon(
            icon: SvgIcons.calendar,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 5),
          Text(
            "Calendar",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: CustomTheme.textColor),
          )
        ],
      ),
    );
  }
}
