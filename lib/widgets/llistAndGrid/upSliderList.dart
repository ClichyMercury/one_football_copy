import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/models/upSlidersItems.dart';

// ignore: must_be_immutable
class UpSliderList extends StatefulWidget {
  final UpSliderItem item;

  const UpSliderList({super.key, required this.item});

  @override
  State<UpSliderList> createState() => _UpSliderListState();
}

class _UpSliderListState extends State<UpSliderList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.item.onTap,
      child: Container(
        height: 100,
        width: 110,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: CustomTheme.greyAccent,
            border: Border.all(
                color: widget.item.liveNow ? Colors.pink : Colors.transparent,
                width: 2.0),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            widget.item.isMatch
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.item.logo1IfTwice!,
                      widget.item.logo2IfTwice!,
                    ],
                  )
                : widget.item.oneLogoOnly,
            const SizedBox(height: 10),
            Text(
              widget.item.title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.item.subtitle,
              style: TextStyle(
                  color: Colors.white, fontSize: widget.item.isMatch ? 13 : 10),
            ),
          ],
        ),
      ),
    );
  }
}

class StoriesComponent extends StatelessWidget {
  const StoriesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                    width: 2.0, color: const Color.fromARGB(255, 14, 83, 193))),
            child: const Center(
              child: Text("🔥"),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Stories",
            style: TextStyle(
                color: CustomTheme.textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
