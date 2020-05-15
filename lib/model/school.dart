import 'package:flutter/material.dart';

import 'course.dart';
class School{

  School({@required this.name,
    @required this.location,
    @required this.logo,
    @required this.backdropPhoto,
    @required this.about,
    @required this.courses

  });
  final String name;
  final String location;
  final String logo;
  final String backdropPhoto;
  final String about;
  final List<Course> courses;


}


