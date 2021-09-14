import 'package:flutter/material.dart';
import 'package:reporta/utility/constants.dart';

class IncidentAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Constants().getColorFromHex(("#E6F6F6")),
                    borderRadius: BorderRadius.circular(4)),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      )),
                ),
              ),
              const Text(
                "Add Incidents",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // const Spacer(),
              Container(
                alignment: Alignment.center,
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Constants().getColorFromHex(("#E6F6F6")),
                    borderRadius: BorderRadius.circular(4)),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.more_vert)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
