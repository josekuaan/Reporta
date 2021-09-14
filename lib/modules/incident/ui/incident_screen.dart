import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reporta/utility/app_route.dart';
import 'package:reporta/widgets/app_custom_bar.dart';

class IncidentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppCustomBar("Incident", const Icon(Icons.filter_alt_outlined)),
              Container(
                color: Colors.blue.shade50,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, AppRouter.incident_details),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Theft",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          "Today, 8:23am",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.blue.shade50,
                                    )
                                  ],
                                ),
                              ),
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
                                  "assets/images/rider.png",
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/map-marker.png",
                                        color: Colors.grey),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("123 Park Avenue Lekki",
                                        style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Hazard",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          "Yesterday, 8:23am",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.blue.shade50,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
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
                                  "assets/images/warning-mark.png",
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
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, right: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Medical",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          "June 4, 8:23am",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.blue.shade50,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
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
                                  "assets/images/rider.png",
                                  width: 70,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/map-marker.png",
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "123 Park Avenue Lekki",
                                      style: TextStyle(color: Colors.grey),
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
            ],
          ),
        ),
      ),
    );
  }
}
