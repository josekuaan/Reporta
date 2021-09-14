import 'package:flutter/material.dart';
import 'package:reporta/modules/insight/ui/insight_app_bar.dart';
// import 'package:pie_chart/pie_chart.dart';
// import 'pie_chart/pie_chart_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:reporta/utility/constants.dart';

class InsightScreen extends StatefulWidget {
  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  final _size = Size(400.0, 400.0);
  List<Color> colorList = [Colors.yellow, Colors.black, Colors.green];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: InsightAppBar(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Incidents",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "14",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Resolved",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Severity",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      child: PieChart(
                        PieChartData(
                          centerSpaceRadius: 80,
                          sectionsSpace: 5,
                          sections: [
                            PieChartSectionData(
                              color: Constants().getColorFromHex("#05AAA7"),
                              value: 70,
                              showTitle: false,
                              radius: 10,
                            ),
                            PieChartSectionData(
                                color: Constants().getColorFromHex("#EB7407"),
                                value: 20,
                                showTitle: false,
                                radius: 10),
                            PieChartSectionData(
                              color: Constants().getColorFromHex("#AA0508"),
                              value: 10,
                              showTitle: false,
                              radius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Constants().getColorFromHex("#05AAA7"),
                              ),
                            ),
                            Text("Extreme")
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Constants().getColorFromHex("#EB7407"),
                              ),
                            ),
                            Text("Medium")
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Constants().getColorFromHex("#AA0508"),
                              ),
                            ),
                            Text("Low")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
