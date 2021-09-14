import 'package:flutter/material.dart';
import 'package:reporta/modules/Home/ui/home.dart';
import 'package:reporta/utility/constants.dart';

class AppButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Constants().getColorFromHex(("#05AAA7"))),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home(1)),
        ),
        child: const Text(
          "Submit",
          style: TextStyle(color: Colors.white, height: 2.2),
        ),
      ),
    );
  }
}
