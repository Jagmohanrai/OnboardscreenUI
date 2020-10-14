import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:onboardscreenui/page1.dart';
import 'package:onboardscreenui/page2.dart';
import 'package:onboardscreenui/page3.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController pageController = PageController();
  double currentIndex = 0;
  void onTap() {
    setState(() {
      if (currentIndex < 2) {
        currentIndex++;
        pageController.animateToPage(currentIndex.round(),
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value.roundToDouble();
                });
              },
              children: [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),
          Container(
            height: 100,
            child: DotsIndicator(
              position: currentIndex,
              dotsCount: 3,
              decorator: DotsDecorator(
                activeColor: Color.fromRGBO(254, 109, 20, 1),
                color: Color.fromRGBO(255, 188, 175, 1),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(254, 109, 20, 1).withOpacity(0.8),
                blurRadius: 15.0,
                offset: Offset(0.0, 6.0),
              ),
            ], borderRadius: BorderRadius.circular(15)),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              height: 50,
              minWidth: 120,
              color: Color.fromRGBO(254, 109, 20, 1),
              onPressed: onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  currentIndex == 2 ? 'Get Started' : 'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
