import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/string.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/widgets/llistAndGrid/TeamGrid.dart';

class ChooseFavoriteTeam extends StatefulWidget {
  const ChooseFavoriteTeam({super.key});

  @override
  State<ChooseFavoriteTeam> createState() => _ChooseFavoriteTeamState();
}

class _ChooseFavoriteTeamState extends State<ChooseFavoriteTeam> {
  TextEditingController searchController = TextEditingController();
  List<Team> selectedTeams = [];

  void onSelectionChanged(List<Team> teams) {
    setState(() {
      selectedTeams = teams;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.bgColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Text(
                      "Select your favorite team",
                      style: TextStyle(
                          color: CustomTheme.textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Get news and update your favorite team',
                      style: TextStyle(
                        color: CustomTheme.textColor.withOpacity(0.5),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1.0, color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: const Icon(Icons.search,
                            color: CustomTheme.textColor),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: CustomTheme.textColor.withOpacity(0.5),
                        ),
                      ),
                      style: const TextStyle(
                        color: CustomTheme.textColor,
                      ),
                      onSubmitted: (String value) {
                        if (kDebugMode) {
                          print("Texte validé : $value");
                        }
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Expanded(
                    child: TeamGrid(
                      teams: AppData.teams,
                      onSelectionChanged: onSelectionChanged,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: selectedTeams.length == 1 ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: selectedTeams.length == 1
                        ? Padding(
                            padding: const EdgeInsets.all(16),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed('/national_team');
                              },
                              child: Container(
                                height: 55,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                  child: Text(
                                    'NEXT',
                                    style: TextStyle(
                                        color: CustomTheme.bgColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
