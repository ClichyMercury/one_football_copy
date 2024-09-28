import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/string.dart';
import 'package:one_football_copy/constant/svg_icons.dart';
import 'package:one_football_copy/widgets/components/newsWidgets.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({super.key});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ArticleViewAppBar(),
              Divider(
                color: Colors.grey.withOpacity(0.3),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "spicy fixtures you must watch this weekend",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CategoryTitle(
                  image: Container(),
                  title: "OneFootball",
                  subtitle: "You follow this team",
                  titleFontSize: 18,
                ),
              ),
              Container(
                height: 300,
                color: CustomTheme.greenYellowMainColor,
                child: const Center(
                  child: Icon(Icons.image),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  AppData.articleText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ArticleViewAppBar extends StatelessWidget {
  const ArticleViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                "22",
                style: TextStyle(color: CustomTheme.textColor, fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('comment_view');
                },
                child: SvgIcon(
                  icon: SvgIcons.comment,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Icon(
                Icons.bookmark_outline,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
