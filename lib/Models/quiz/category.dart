import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Question.dart';

class Category {
  final String categoryName;
  final String description;
  final Color backgroundColor;
  final IconData icon;
  final List<Question> questions;
  final String imageUrl;

  Category({
    required this.imageUrl,
    required this.questions,
    required this.categoryName,
    this.description = '',
    this.backgroundColor = Colors.orange,
    this.icon = Icons.question_answer,
  });
}
