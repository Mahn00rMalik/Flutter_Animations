import 'package:flutter/material.dart';
import 'package:hogwarts_app/model/school.dart';
import 'package:hogwarts_app/ui/school_details_animation.dart';
import 'dart:ui' as ui;

import 'course_card.dart';

class SchoolDetailsView extends StatelessWidget {
  final SchoolDetailsAnimation animation;
  final School school;

  SchoolDetailsView(
      {@required this.school, @required AnimationController controller})
      : animation = new SchoolDetailsAnimation(controller);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
          animation: animation.controller, builder: createAnimation),
    );
  }

  Widget createAnimation(BuildContext context, Widget child) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Opacity(
          opacity: animation.bgdropOpacity.value,
          child: Image.asset(
            school.backdropPhoto,
            fit: BoxFit.cover,
          ),
        ),
        BackdropFilter(
          filter: ui.ImageFilter.blur(
              sigmaX: animation.bgdropBlur.value,
              sigmaY: animation.bgdropBlur.value),
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: _createContent(),
          ),
        )
      ],
    );
  }

  Widget _createContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createLogoAvatar(),
          _createAboutSchool(),
          _createCourseScroller()
        ],
      ),
    );
  }

  Widget _createLogoAvatar() {
    return Transform(
      transform: Matrix4.diagonal3Values(
          animation.avatarSize.value, animation.avatarSize.value, 1.0),

      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        height: 110.0,
        margin: const EdgeInsets.only(top: 2.0, left: 9.0),
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Image.asset(school.logo),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hogwarts School of Witchcraft and Wizardry",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createAboutSchool() {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0, left: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            school.name,
            style: TextStyle(
                color: Colors.white.withOpacity(animation.nameOpacity.value),
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            school.location,
            style: TextStyle(
                color:
                    Colors.white.withOpacity(animation.locationOpacity.value),
                fontWeight: FontWeight.w500),
          ),
          Container(
            color: Colors.white.withOpacity(0.79),
            margin: const EdgeInsets.symmetric(vertical: 14.0),
            width: animation.dividerWidth.value,
            height: 1.0,
          ),
          Text(
            school.about,
            style: TextStyle(
                color: Colors.white.withOpacity(animation.aboutOpacity.value),
                height: 1.4),
          )
        ],
      ),
    );
  }

  Widget _createCourseScroller() {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Transform(
        transform: new Matrix4.translationValues(
            animation.courseScrollerXTranslation.value, 0.0, 0.0),
        child: SizedBox.fromSize(
          size: Size.fromHeight(250.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              itemCount: school.courses.length,
              itemBuilder: (BuildContext context, int index) {
                var course = school.courses[index];
                return CourseCard(course);
              }),
        ),
      ),
    );
  }
}
