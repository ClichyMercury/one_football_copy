import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/widgets/myWidgets/AppBars.dart';
import 'package:one_football_copy/widgets/components/MatchWidget.dart';
import 'package:one_football_copy/widgets/buttons/button.dart';
import 'package:one_football_copy/widgets/components/newsWidgets.dart';
import 'package:one_football_copy/widgets/components/timeSelection.dart';
import 'package:intl/intl.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  int selectedIndex = 7;

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = List.generate(15, (index) {
      return DateTime.now().subtract(Duration(days: 7 - index));
    });

    bool isSameDay(DateTime date1, DateTime date2) {
      return date1.year == date2.year &&
          date1.month == date2.month &&
          date1.day == date2.day;
    }

    // Format the dates to a more readable format with labels for today, yesterday, and tomorrow
    List<String> formattedDates = dates.map((date) {
      if (isSameDay(date, DateTime.now().subtract(const Duration(days: 1)))) {
        return "Yesterday";
      } else if (isSameDay(date, DateTime.now())) {
        return "Today";
      } else if (isSameDay(date, DateTime.now().add(const Duration(days: 1)))) {
        return "Tomorrow";
      } else {
        return DateFormat('dd MMM').format(date);
      }
    }).toList();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MatchesAppBar(),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: formattedDates.length +
                      2, // +2 pour inclure les deux boutons supplémentaires
                  controller: ScrollController(
                    initialScrollOffset: 100.0 * 6,
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      // Premier bouton
                      return const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: CalendarButton(),
                      );
                    } else if (index == formattedDates.length + 1) {
                      // Dernier bouton
                      return const Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: CalendarButton(),
                      );
                    } else {
                      // Les dates
                      return TimeSelector(
                        date: formattedDates[index -
                            1], // On décale l'index pour accéder à la liste des dates
                        isSelected: index - 1 ==
                            selectedIndex, // Ajustement de l'index pour la sélection
                        onTap: () {
                          setState(() {
                            selectedIndex = index -
                                1; // Ajustement de l'index pour la sélection
                          });
                        },
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Divider(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                child: CategoryTitle(
                  titleFontSize: 19,
                  title: "All Matches",
                  subtitle: "All other matches happening today",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: const BoxDecoration(color: CustomTheme.greyAccent),
                child: Column(
                  children: [
                    CategoryTitle(
                      titleFontSize: 17,
                      title: "Club Friendly Games",
                      image: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    MatchViewRow(
                      team1: "Bayern Munich",
                      team2: "Chelsea",
                      scoreTeam1: "4",
                      scoreTeam2: "0",
                      time: "21'",
                      live: true,
                      logoTeam1: AnyLogo.uefa.bayernMunich.image(height: 30),
                      logoTeam2: AnyLogo.uefa.chelsea.image(height: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    MatchViewRow(
                      team1: "Real Madrid",
                      team2: "PSG",
                      scoreTeam1: "",
                      scoreTeam2: "",
                      time: "22H30",
                      live: false,
                      logoTeam1: AnyLogo.uefa.realMadrid.image(height: 30),
                      logoTeam2:
                          AnyLogo.uefa.parisSaintGermain.image(height: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const SeeTableButton(
                      text: "See Table",
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
                      titleFontSize: 17,
                      title: "UEFA champions league",
                      subtitle: "Playoff 1st leg",
                      image: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    MatchViewRow(
                      team1: "Bayern Munich",
                      team2: "Chelsea",
                      scoreTeam1: "4",
                      scoreTeam2: "0",
                      time: "21'",
                      live: true,
                      logoTeam1: AnyLogo.uefa.bayernMunich.image(height: 30),
                      logoTeam2: AnyLogo.uefa.chelsea.image(height: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    MatchViewRow(
                      team1: "Real Madrid",
                      team2: "PSG",
                      scoreTeam1: "",
                      scoreTeam2: "",
                      time: "22H30",
                      live: false,
                      logoTeam1: AnyLogo.uefa.realMadrid.image(height: 30),
                      logoTeam2:
                          AnyLogo.uefa.parisSaintGermain.image(height: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const SeeTableButton(
                      text: "See Table",
                    )
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
