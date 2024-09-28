import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/models/upSlidersItems.dart';
import 'package:one_football_copy/widgets/buttons/button.dart';
import 'package:one_football_copy/widgets/components/liveFootball.dart';
import 'package:one_football_copy/widgets/components/newsWidgets.dart';
import 'package:one_football_copy/widgets/myWidgets/onFieldWidget.dart';
import 'package:one_football_copy/widgets/components/shortsitems.dart';
import 'package:one_football_copy/widgets/llistAndGrid/upSliderList.dart';

class TV extends StatefulWidget {
  const TV({super.key});

  @override
  State<TV> createState() => _TVState();
}

class _TVState extends State<TV> {
  static List<UpSliderItem> upRowItems = [
    UpSliderItem(
      liveNow: false,
      isMatch: false,
      oneLogoOnly:
          const Icon(Icons.play_circle_outlined, color: Colors.white, size: 45),
      title: 'Live games',
      subtitle: 'Watch now',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
    UpSliderItem(
      liveNow: false,
      isMatch: false,
      oneLogoOnly: const Icon(Icons.replay, color: Colors.white, size: 45),
      title: 'Highlights',
      subtitle: 'See All',
      onTap: () {
        // Action à exécuter lors du clic sur cet élément
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: upRowItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: UpSliderList(item: upRowItems[index]),
                      );
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
                      title: "Watch live on OneFootball",
                      subtitle: "Join Us for the latest matches",
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 300,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return LiveFootball(
                              team1: "Barcelona",
                              team2: "AC milan",
                              logoTeam1: AnyLogo.uefa.barcelona.image(),
                              logoTeam2: AnyLogo.uefa.acMilan.image(),
                              time: "15H00",
                              isLive: false,
                              //dayMatch: "23 Aug",
                              provider: "OneFootball",
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const SeeTableButton(
                      text: "See More",
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "LaLiga",
                      subtitle: "Latest videos based on your following",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const GSMandMore(
                              duration: "01:13",
                              title:
                                  "Simeone:'the club is making great effort to bring in important players'",
                              team: "Atlético de Madrid",
                              time: "Yesterday",
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "Club Friendly Games",
                      subtitle: "Latest videos based on your following",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const GSMandMore(
                              duration: "03:59",
                              title: "Highlights | Napoli - Girona 0-2",
                              team: "Napoli",
                              time: "5 August",
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "Official Club Videos",
                      subtitle: "An inside look with our club partners",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const GSMandMore(
                              duration: "00:31",
                              title:
                                  "Manuel Neur retires from international football",
                              team: "FC Bayern Munich",
                              time: "3 hrs ago",
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "OneFootball Videos",
                      subtitle: "News & Shows by us for you",
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
                              isOFvid: true,
                              title:
                                  "Haaland on\nmarking 100 Man\nCity appearances\nwith a goal",
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "Most viewed",
                      subtitle: "What everyone wacthing",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const GSMandMore(
                              duration: "00:31",
                              title: "Top 10 new kits: 2024-25 season",
                              team: "oneFootball",
                              time: "Yesterday",
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    CategoryTitle(
                      titleFontSize: 22,
                      title: "Latest highlights",
                      subtitle: "Goals, talking points and more",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const GSMandMore(
                              duration: "05:45",
                              title: "Slovak Niké Liga: Spartak Trnava",
                              team: "Unia Ligovych Klubov",
                              time: "20 hrs ago",
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const SeeTableButton(
                      text: "See More",
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
