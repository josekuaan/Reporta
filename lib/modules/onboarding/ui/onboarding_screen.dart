import 'package:flutter/material.dart';
import 'package:reporta/modules/Home/ui/home.dart';
import 'package:reporta/modules/onboarding/model/item_model.dart';
import 'package:reporta/modules/onboarding/ui/slider_dot.dart';
import 'package:reporta/modules/onboarding/ui/slider_item.dart';
import 'package:reporta/utility/app_route.dart';
import 'package:reporta/utility/constants.dart';

class OnboardingScreen extends StatelessWidget {
  PageController pageController =
      PageController(initialPage: 2, viewportFraction: 1.0, keepPage: true);
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade50,
        constraints: const BoxConstraints.expand(),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemList.length,
              controller: pageController,
              onPageChanged: (int value) => {},
              itemBuilder: (context, index) => Slideritem(index),
            ),
            // const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home(3)),
                        ),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Constants().getColorFromHex(
                                ("#05AAA7"),
                              ),
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < itemList.length; i++)
                              if (i == currentPage)
                                SliderDot(true)
                              else
                                SliderDot(false)
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home(3)),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Constants().getColorFromHex(
                                ("#05AAA7"),
                              ),
                              fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
