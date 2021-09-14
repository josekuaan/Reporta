import 'package:flutter/material.dart';
import 'package:reporta/utility/constants.dart';
import 'package:reporta/widgets/app_custom_bar.dart';

class IncidentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppCustomBar("Details", const Icon(Icons.more_vert)),
              Container(
                color: Colors.blue.shade50,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    children: [
                      Text("Medical",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)),
                      Text(
                        "Yesterday, 8:22AM",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            child: Center(
                              child: Icon(
                                Icons.control_point_outlined,
                                size: 30,
                                color: Constants().getColorFromHex(("#05AAA7")),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                itemBuilder: (ct, index) {
                                  return Container(
                                      height: 100,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/tractor.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      // color: Colors.amber[600],
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Icon(
                                              Icons.play_circle,
                                              color: Colors.white,
                                              size: 50,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 130,
                                          ),
                                          Text(
                                            "00:10",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ));
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    width: 20,
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Location",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Icon(
                                Icons.mode_edit_outlined,
                                size: 14,
                                color: Constants().getColorFromHex(("#05AAA7")),
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                  color:
                                      Constants().getColorFromHex(("#05AAA7")),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              width: 350,
                              height: 150,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/map.png",
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: Image.asset(
                                "assets/images/acident.png",
                                width: 70,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/map-marker.png",
                                      color: Colors.grey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "123 Park Avenue Lekki",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 400,
                        color: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Incident ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("In-222777"),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Reported On",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("05/05/2021 @13:16",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Injured Employee's Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("John Doe",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Job Tittle",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("John Doe",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Supervsor's Name",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("John Doe",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Date and Time of Injury",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("05/05/2021 @13:16",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Additional information",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("lorum ipsum",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
