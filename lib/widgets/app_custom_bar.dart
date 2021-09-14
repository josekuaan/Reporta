import 'package:flutter/material.dart';
import 'package:reporta/modules/Home/ui/home.dart';
import 'package:reporta/utility/constants.dart';

class AppCustomBar extends StatelessWidget {
  AppCustomBar(this.tittle, this.icon);
  String tittle;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 30, left: 12, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Constants().getColorFromHex(("#E6F6F6")),
                  borderRadius: BorderRadius.circular(4)),
              child: InkWell(
                onTap: () => tittle == "Details"
                    ? Navigator.pop(context)
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(3),
                        ),
                      ),
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    )),
              ),
            ),
            Text(
              tittle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Constants().getColorFromHex(("#E6F6F6")),
                  borderRadius: BorderRadius.circular(4)),
              child: InkWell(
                onTap: () => {},
                child: icon,
              ),
            )
          ],
        ),
      ),
    );
  }
}
