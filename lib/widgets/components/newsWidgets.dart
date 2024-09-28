import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/svg_icons.dart';

class CategoryFisrtArticleCard extends StatelessWidget {
  const CategoryFisrtArticleCard({
    super.key,
    required this.title,
    required this.redactor,
    required this.time,
    required this.nbOfComments,
    required this.touch,
  });

  final String title;
  final String redactor;
  final String time;
  final String nbOfComments;
  final VoidCallback touch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration:
                const BoxDecoration(color: CustomTheme.greenYellowMainColor),
            child: const Center(
              child: Text('Add image here'),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
                color: CustomTheme.textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: CustomTheme.greenYellowMainColor,
                    radius: 15,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    redactor,
                    style: const TextStyle(
                        color: CustomTheme.textColor, fontSize: 12),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    " - $time",
                    style: TextStyle(
                        color: CustomTheme.textColor.withOpacity(0.7),
                        fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    nbOfComments,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SvgIcon(
                    icon: SvgIcons.comment,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CategoryTitle extends StatelessWidget {
  CategoryTitle(
      {super.key,
      required this.title,
      this.subtitle,
      this.image,
      required this.titleFontSize});

  final String title;
  final double titleFontSize;
  String? subtitle;
  Widget? image;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        image != null
            ? Row(
                children: [
                  CircleAvatar(
                    backgroundColor: CustomTheme.greenYellowMainColor,
                    radius: 22,
                    child: image,
                  ),
                  const SizedBox(width: 10),
                  subtitle != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  color: CustomTheme.textColor,
                                  fontSize: titleFontSize,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              subtitle!,
                              softWrap: true,
                              style: TextStyle(
                                  color: CustomTheme.textColor,
                                  fontSize: height / 55,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        )
                      : Text(
                          title,
                          style: TextStyle(
                              color: CustomTheme.textColor,
                              fontSize: titleFontSize,
                              fontWeight: FontWeight.bold),
                        ),
                ],
              )
            : subtitle != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: CustomTheme.textColor,
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subtitle!,
                        style: TextStyle(
                            color: CustomTheme.textColor,
                            fontSize: width / 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                : Text(
                    title,
                    style: TextStyle(
                        color: CustomTheme.textColor,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold),
                  ),
      ],
    );
  }
}

class OtherNewsArticles extends StatelessWidget {
  const OtherNewsArticles({
    super.key,
    required this.title,
    required this.redactor,
    required this.time,
    required this.nbOfComments,
    required this.touch,
  });

  final String title;
  final String redactor;
  final String time;
  final String nbOfComments;
  final VoidCallback touch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: CustomTheme.textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: CustomTheme.greenYellowMainColor),
                  child: const Center(
                    child: Icon(Icons.image),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: CustomTheme.greenYellowMainColor,
                      radius: 15,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      redactor,
                      style: const TextStyle(
                          color: CustomTheme.textColor, fontSize: 12),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      " - $time",
                      style: TextStyle(
                          color: CustomTheme.textColor.withOpacity(0.7),
                          fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      nbOfComments,
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SvgIcon(
                      icon: SvgIcons.comment,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
