import 'package:flutter/material.dart';
import 'package:hackharvard21/Models/quiz/category.dart';

import 'package:hackharvard21/Models/quiz/Question.dart';
import 'package:hackharvard21/Widgets/quiz/questions_widget.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({required this.category});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late PageController controller;
  late Question question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.category.questions.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: QuestionsWidget(
          category: widget.category,
          controller: controller,
          onChangedPage: (index) => nextQuestion(index: index),
          onClickedOption: selectOption,
        ),
      );

  void selectOption(option) {
    if (question.isLocked) {
      return;
    } else {
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
      });
    }
  }

  void nextQuestion({required int index}) {
    final nextPage = controller.page! + 1;
    final indexPage = index ?? nextPage.toInt();

    setState(() {
      question = widget.category.questions[indexPage];
    });
  }
}
