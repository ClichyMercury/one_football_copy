import 'package:flutter/material.dart';
import 'package:one_football_copy/constant/customTheme.dart';
import 'package:one_football_copy/views/root/TV.dart';
import 'package:one_football_copy/views/root/homepage/homepage.dart';
import 'package:one_football_copy/views/root/matches.dart';
import 'package:one_football_copy/views/root/profile.dart';
import 'package:one_football_copy/widgets/bottomNavigationBar/custtom_navigation_bar.dart';

class Root extends StatefulWidget {
  const Root({
    super.key,
  });

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int index = 0;

  int currentIndex = 0;

  final screens = const [Homepage(), Matches(), TV(), Profile()];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.greyAccent,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: SafeArea(
        child: CustomNavigationBar(
          changeIndex: changeIndex,
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
