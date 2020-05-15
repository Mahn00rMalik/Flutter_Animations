import 'package:flutter/material.dart';
import 'package:hogwarts_app/model/course.dart';



class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard(this.course);

  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black26, spreadRadius: 2.0, blurRadius: 10.0)
        ]);
  }

  Widget createThumbnail(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(course.thumbnail,
          // height: 100,
          //  width: 100,
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16.0),
      decoration: _createShadowRoundCorners(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: createThumbnail(),

          ),
          Flexible(
            flex: 6,
            child: createCourseInfo(),

          )
        ],
      ),

    );
  }



  Widget createCourseInfo() {

    return Padding(
      padding: const EdgeInsets.only(top:16.0,left: 4,right: 4),
      child: Text(
        course.about,style: TextStyle(
          color: Colors.white.withOpacity(0.85)
      ),
      ),
    );
  }
}