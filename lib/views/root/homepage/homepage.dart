import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/string.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/widgets/myWidgets/AppBars.dart';
import 'package:one_football_copy/widgets/components/newsWidgets.dart';
import 'package:one_football_copy/widgets/components/shortsitems.dart';
import 'package:one_football_copy/widgets/components/trendingPlayers.dart';
import 'package:one_football_copy/widgets/llistAndGrid/upSliderList.dart';
import 'package:one_football_copy/widgets/myWidgets/onFieldWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Team> teams = [
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.realMadrid.image(height: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomePageAppBar(teams: teams),
              const SizedBox(height: 15),
              SizedBox(
                height: 120,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppData.upSliderItems.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        // Afficher le composant fixe en premier
                        return const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: StoriesComponent(),
                        );
                      } else {
                        // Afficher les autres éléments de la liste
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: UpSliderList(
                              item: AppData.upSliderItems[index -
                                  1]), // -1 pour compenser l'index du composant fixe
                        );
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "Top News",
                      subtitle:
                          "The hottest news and views of the world of football",
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    CategoryFisrtArticleCard(
                      title: 'spicy fixtures you must watch this weekend',
                      redactor: 'OneFootball',
                      time: "2 hours",
                      nbOfComments: "12",
                      touch: () {
                        Get.toNamed("article_view");
                      },
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    OtherNewsArticles(
                      title:
                          "OneFootball predicts the 2024/25 Premier League season",
                      redactor: 'OneFootball',
                      time: "2 hours",
                      nbOfComments: "12",
                      touch: () {
                        Get.toNamed("article_view");
                      },
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    OtherNewsArticles(
                      title:
                          "OneFootball predicts the 2024/25 Premier League season",
                      redactor: 'OneFootball',
                      time: "2 hours",
                      nbOfComments: "12",
                      touch: () {
                        Get.toNamed("article_view");
                      },
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    OtherNewsArticles(
                      title:
                          "OneFootball predicts the 2024/25 Premier League season",
                      redactor: 'OneFootball',
                      time: "2 hours",
                      nbOfComments: "12",
                      touch: () {
                        Get.toNamed("article_view");
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "OneFootball Shorts",
                      subtitle: "Hot takes and fun in short clips",
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const ShortItems(
                              isOFvid: false,
                              title:
                                  "Haaland on\nmarking 100 Man\nCity appearances\nwith a goal",
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(
                      image: Container(),
                      title: "Real Madrid",
                      subtitle: "You follow this team",
                      titleFontSize: 22,
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    CategoryFisrtArticleCard(
                      title: 'Real madrid wins the UEFA champions league',
                      redactor: 'OneFootball',
                      time: "2 hours",
                      nbOfComments: "12",
                      touch: () {
                        Get.toNamed("article_view");
                      },
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    OtherNewsArticles(
                      title:
                          "OneFootball predicts the 2024/25 Premier League season",
                      redactor: 'OneFootball',
                      time: "2 hours",
                      nbOfComments: "12",
                      touch: () {
                        Get.toNamed("article_view");
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "TRENDING PLAYERS",
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 125,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const TrendingPlayersWidget(
                              team: "REAL MADRID",
                              player: "Kylian Mbappé",
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "Goals, skills, misses and more",
                      subtitle: "The best on-field action",
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 260,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const GSMandMore(
                              duration: "00:41",
                              title:
                                  "Haaland on marking 100 Man City appearances with a goal",
                              team: "Manchester City F.C.",
                              time: "50 minutes ago",
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
