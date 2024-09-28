import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/constant/string.dart';
import 'package:one_football_copy/models/Team.dart';
import 'package:one_football_copy/widgets/llistAndGrid/TeamGrid.dart';
import 'package:one_football_copy/widgets/components/TeamLogo.dart';

class ChooseMightLikeTeam extends StatefulWidget {
  const ChooseMightLikeTeam({super.key});

  @override
  State<ChooseMightLikeTeam> createState() => _ChooseMightLikeTeamState();
}

class _ChooseMightLikeTeamState extends State<ChooseMightLikeTeam> {
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
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: CustomTheme.textColor,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "We think you might like",
                      style: TextStyle(
                          color: CustomTheme.textColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Based on your previous selections',
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
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 75,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: ListView.builder(
                                      scrollDirection: Axis
                                          .horizontal, // Utilisez horizontal pour les aligner à gauche sur une ligne
                                      itemCount: selectedTeams.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: TeamLogo(
                                            enableText: true,
                                            raduis: 45,
                                            team: selectedTeams[index],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          height: 55,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              border: Border.all(
                                                  width: 1.0,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Center(
                                            child: Text(
                                              'SKIP',
                                              style: TextStyle(
                                                  color: CustomTheme.textColor,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed('/login');
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          height: 55,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
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
                                    ),
                                  ],
                                ),
                              ],
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
