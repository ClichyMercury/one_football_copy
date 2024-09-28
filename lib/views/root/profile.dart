import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/widgets/myWidgets/profileWidgets.dart';
import 'package:one_football_copy/widgets/myWidgets/headerProfileCard.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Team> teams = [
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.realMadrid.image()),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.manchesterCity.image()),
    Team(name: 'logo1', logoUrl: AnyLogo.uefa.acMilan.image()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeadCardProfile(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    ProfileCategoryTitleWidget(
                      title: "FOLLOWING",
                      touch: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 115,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ListView.builder(
                          scrollDirection: Axis
                              .horizontal, // Utilisez horizontal pour les aligner à gauche sur une ligne
                          itemCount: teams.length,
                          itemBuilder: (context, index) {
                            return ProfileTeamFollowingList(
                              teams: teams,
                              index: index,
                            );
                          },
                        ),
                      ),
                    ),
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
                    ProfileCategoryTitleWidget(
                      title: "QUIZZES AND ACHIEVEMENTS",
                      touch: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    ProfileOptionCard(
                      title: "Summer transfer window quiz",
                      subtitle: "Available",
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
                    ProfileCategoryTitleWidget(
                      title: "GAMES HUB",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    ProfileOptionCard(
                      title: "Matching Pairs",
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
                    ProfileCategoryTitleWidget(
                      title: "YOURS ONLY",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const ProfileOptionLine(
                      title: "Bookmarks",
                      icon: Icons.bookmark_outline,
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
                    ProfileCategoryTitleWidget(
                      title: "SUPPORT",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const ProfileOptionLine(
                      title: "Contact us",
                      icon: Icons.email_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const ProfileOptionLine(
                      title: "Help center",
                      icon: Icons.help_outlined,
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
