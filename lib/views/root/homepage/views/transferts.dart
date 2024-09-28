import 'package:flutter/material.dart';

class TransfertView extends StatefulWidget {
  const TransfertView({super.key});

  @override
  State<TransfertView> createState() => _TransfertViewState();
}

class _TransfertViewState extends State<TransfertView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
