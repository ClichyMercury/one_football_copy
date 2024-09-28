import 'package:flutter/material.dart';

class NewsModel {
  final String title;
  final String redactor;
  final String time;
  final String nbOfComments;
  final VoidCallback touch;

   NewsModel({
    required this.title,
    required this.redactor,
    required this.time,
    required this.nbOfComments,
    required this.touch,
  });
}  