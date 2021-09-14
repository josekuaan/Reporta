import 'package:flutter/material.dart';
import 'package:reporta/utility/constants.dart';

class Attachments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Constants().getColorFromHex(("#05AAA7")),
              ),
              child: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
            const Text("Photo")
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Constants().getColorFromHex(("#05AAA7")),
              ),
              child: const Icon(
                Icons.photo_outlined,
                color: Colors.white,
              ),
            ),
            const Text("Gallery")
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Constants().getColorFromHex(("#05AAA7")),
              ),
              child: const Icon(
                Icons.videocam_rounded,
                color: Colors.white,
              ),
            ),
            const Text("Record")
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Constants().getColorFromHex(("#05AAA7")),
              ),
              child: const Icon(
                Icons.keyboard_voice_rounded,
                color: Colors.white,
              ),
            ),
            const Text("Record")
          ],
        )
      ],
    );
  }
}
