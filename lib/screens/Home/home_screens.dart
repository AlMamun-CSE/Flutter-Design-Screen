import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_interview_exam_design/screens/Home/model/popular_course_model.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        margin: const EdgeInsets.only(
          top: 8,
        ),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                      icon: const Icon(Icons.widgets_outlined),
                      iconSize: 35,
                      onPressed: () {},
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.deepPurpleAccent,
                      ),
                      iconSize: 35,
                      onPressed: () {},
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Hey John!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Shape Your Body",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "60% off",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "17 October.October 20",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Center(
                                  child: Text(
                                    "Join GYM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                height: 28,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange[500],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/women.png",
                    ),
                  ],
                ),
                height: 180,
                width: 199,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.yellow.shade600,
                      Colors.yellow.shade800,
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Popular Course",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.pink, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: courseList.length,
                  itemBuilder: (context, index) {
                    var result = courseList[index];
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(result.courseImage),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: result.imageBackgroundColor),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  result.courseTitle,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${result.courseHour} hours ${result.courseMinite} minutes",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      rating: result.courseRating,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 10.0,
                                      direction: Axis.horizontal,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${result.courseReviewCount} Review",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            "\$${result.coursePrice}",
                                            style: const TextStyle(
                                                color: Colors.pink),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: WaterDropNavBar(
        // bottomPadding: 8.0, for android maybe, test by yourself what is suitable

        backgroundColor: Colors.white,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.bookmark_rounded,
            outlinedIcon: Icons.bookmark_border_rounded,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
            filledIcon: Icons.email_rounded,
            outlinedIcon: Icons.email_outlined,
          ),
          BarItem(
            filledIcon: Icons.folder_rounded,
            outlinedIcon: Icons.folder_outlined,
          ),
        ],
      ),
    );
  }
}
