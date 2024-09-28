import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';

class ShortItems extends StatelessWidget {
  const ShortItems({super.key, required this.title, required this.isOFvid});

  //final String imageUrl;
  final String title;
  //final Widget logoUrl;
  final bool isOFvid;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*  // Image de fond
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ), */
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 135,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomTheme.greenYellowMainColor),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.5),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: !isOFvid
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: CustomTheme.greyAccent,
                ),
                SizedBox(height: 5),
                if (!isOFvid)
                  Text(
                    title,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
