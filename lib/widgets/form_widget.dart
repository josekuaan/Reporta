import 'package:flutter/material.dart';
import 'package:reporta/utility/constants.dart';

class FormWidget extends StatelessWidget {
  FormWidget({this.tittle, this.icon, this.multiLines, this.name});
  bool? multiLines = false;
  String? tittle;
  final Icon? icon;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(tittle!),
          ),
          name == "Enter Location"
              ? Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7),
                            ),
                            color: Colors.white),
                        child: TextFormField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            label: Text(name!),
                            labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[200],
                                fontWeight: FontWeight.w400),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 6),
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      width: 80,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(7),
                              bottomRight: Radius.circular(7)),
                          color: Constants().getColorFromHex(("#05AAA7"))),
                      child: Text(
                        "Map",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white),
                  child: TextFormField(
                    maxLines: multiLines! ? 6 : 1,
                    keyboardType: multiLines! ? TextInputType.multiline : null,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      prefixIcon: icon ?? Container(),
                      border: InputBorder.none,
                      isDense: true,
                      label: Text(name!),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.symmetric(vertical: 6),
                    ),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 1.21),
                  ),
                )
        ],
      ),
    );
  }
}
