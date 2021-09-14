import 'package:flutter/material.dart';
import 'package:reporta/utility/constants.dart';

class SliderDot extends StatelessWidget {
  SliderDot(this.isActive);
  bool isActive;

  @override
  Widget build(BuildContext context) {
    print(isActive);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color:
            isActive ? Constants().getColorFromHex(("#05AAA7")) : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
