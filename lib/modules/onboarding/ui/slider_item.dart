import 'package:flutter/material.dart';
import 'package:reporta/modules/onboarding/model/item_model.dart';

class Slideritem extends StatelessWidget {
  Slideritem(this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Image.asset(
          itemList[index]["icon"],
          width: 130,
        ),
        SizedBox(
          height: 60,
        ),
        Expanded(
          child: Image.asset(
            itemList[index]["image"],
            fit: BoxFit.cover,
            width: 500,
          ),
        ),
      ],
    );
    ;
  }
}
