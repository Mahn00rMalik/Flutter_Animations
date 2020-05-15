

import 'package:hogwarts_app/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:hogwarts_app/ui/school_details_view.dart';

class SchoolDetailsAnimator extends StatefulWidget {
  @override
  _SchoolDetailsAnimatorState createState() => _SchoolDetailsAnimatorState();
}

class _SchoolDetailsAnimatorState extends State<SchoolDetailsAnimator> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 1800),
        vsync: this);
    super.initState();
  _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {


    return SchoolDetailsView(school: Repository.Hogwarts,controller: _controller,);
  }
}
