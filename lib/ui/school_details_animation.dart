import 'package:flutter/animation.dart';

class SchoolDetailsAnimation {
  SchoolDetailsAnimation(this.controller)
      : bgdropOpacity = new Tween(begin: 0.5, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.500, curve: Curves.ease))),
        bgdropBlur = new Tween(begin: 0.0, end: 5.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.000, 0.8000, curve: Curves.ease))),
        nameOpacity = new Tween(begin: 0.0, end: 1.0)
            .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn)),
        locationOpacity = new Tween(begin: 0.0, end: 0.84).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.500, 0.600, curve: Curves.easeIn))),
        dividerWidth = new Tween(begin: 0.0, end: 225.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: Interval(0.65, 0.75, curve: Curves.fastOutSlowIn))),
        aboutOpacity = new Tween(begin: 0.0, end: 0.85).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.75, 0.9, curve: Curves.easeIn))),
        avatarSize = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.100, 0.400, curve: Curves.elasticInOut))),
        courseScrollerXTranslation = new Tween(begin: 60.0, end: 0.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.830, 1.00, curve: Curves.ease)));



  final AnimationController controller;
  final Animation<double> bgdropOpacity;
  final Animation<double> bgdropBlur;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> dividerWidth;
  final Animation<double> aboutOpacity;
  final Animation<double> avatarSize;
  final Animation<double> courseScrollerXTranslation;
}
