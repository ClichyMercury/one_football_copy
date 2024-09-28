import 'package:flutter/material.dart';
import 'package:one_football_copy/widgets/components/TeamLogo.dart';

import '../../models/Team.dart';

class TeamGrid extends StatefulWidget {
  const TeamGrid(
      {super.key, required this.teams, required this.onSelectionChanged});

  final List<Team> teams;
  final Function(List<Team>) onSelectionChanged;

  @override
  State<TeamGrid> createState() => _TeamGridState();
}

class _TeamGridState extends State<TeamGrid> {
  List<Team> selectedTeams = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 5,
      ),
      itemCount: widget.teams.length,
      itemBuilder: (context, index) {
        final team = widget.teams[index];
        final isSelected = selectedTeams.contains(team);

        return Center(
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      selectedTeams.remove(team);
                    } else {
                      selectedTeams.add(team);
                    }
                    widget.onSelectionChanged(selectedTeams);
                  });
                },
                child: TeamLogo(
                  enableText: true,
                  team: widget.teams[index],
                  raduis: height / 8.5,
                ),
              ),
              if (isSelected)
                const Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(Icons.favorite, color: Colors.red),
                ),
            ],
          ),
        );
      },
    );
  }
}
