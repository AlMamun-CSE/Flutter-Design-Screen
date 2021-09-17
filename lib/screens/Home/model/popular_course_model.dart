import 'package:flutter/material.dart';

class PopularCourseModel {
  String courseTitle;
  int courseHour;
  int courseMinite;
  double courseReviewCount;
  double coursePrice;
  String courseImage;
  Color imageBackgroundColor;
  double courseRating;

  PopularCourseModel(
      this.courseTitle,
      this.courseHour,
      this.courseMinite,
      this.courseReviewCount,
      this.coursePrice,
      this.courseImage,
      this.imageBackgroundColor,
      this.courseRating);
}

List<PopularCourseModel> courseList = [
  PopularCourseModel(
    "Lifestyle Pro Excercise",
    2,
    45,
    864,
    20,
    "assets/images/boxing_glove_copy.png",
    const Color(0x90E5C3C3),
    4.25,
  ),
  PopularCourseModel(
    "Healthy Food Tips & T",
    1,
    45,
    364,
    10,
    "assets/images/apple-png_copy.png",
    const Color(0xFFFFECDF),
    5.0,
  ),
  PopularCourseModel(
    "Daily Various Sports",
    3,
    45,
    864,
    20,
    "assets/images/ball1.png",
    const Color(0xFFE8C79D),
    3.5,
  ),
  PopularCourseModel(
    "Lifestyle Pro Excercise",
    2,
    45,
    864,
    20,
    "assets/images/apple-png_copy.png",
    const Color(0xFFFFECDF),
    4.8,
  )
];
