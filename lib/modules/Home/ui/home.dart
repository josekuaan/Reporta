import 'package:flutter/material.dart';
import 'package:reporta/modules/incident/ui/incident_screen.dart';
import 'package:reporta/modules/insight/ui/insight_screen.dart';
import 'package:reporta/modules/map/ui/map.dart';
import 'package:reporta/modules/new_incident/ui/new_incident.dart';
import 'package:reporta/modules/profile/ui/profile.dart';
import 'package:reporta/modules/settings/ui/settings_screen.dart';
import 'package:reporta/utility/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home(this.index);
  int index;
  @override
  State<Home> createState() => _HomeState(index);
}

class _HomeState extends State<Home> {
  _HomeState(this.index);
  final int? index;
  late int _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = index ?? 3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildPage(),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          selectedItemColor: Constants().getColorFromHex(("#05AAA7")),

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_sharp,
                color: Colors.grey,
              ),
              label: 'Insight',
              activeIcon: Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    color: Constants().getColorFromHex(("#05AAA7")),
                    borderRadius: BorderRadius.circular(4)),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.pie_chart_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted_sharp,
                color: Colors.grey,
              ),
              label: 'Incident',
              activeIcon: Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    color: Constants().getColorFromHex(("#05AAA7")),
                    borderRadius: BorderRadius.circular(4)),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.format_list_bulleted_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.grey,
                ),
                label: 'New Incident',
                activeIcon: Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                      color: Constants().getColorFromHex(("#05AAA7")),
                      borderRadius: BorderRadius.circular(4)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      color: Colors.white,
                    ),
                  ),
                )),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: 'Map',
              activeIcon: Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    color: Constants().getColorFromHex(("#05AAA7")),
                    borderRadius: BorderRadius.circular(4)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              label: 'Settings',
              activeIcon: Container(
                width: 35,
                height: 35,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                    color: Constants().getColorFromHex(("#05AAA7")),
                    borderRadius: BorderRadius.circular(4)),
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget buildPage() {
    switch (_selectedIndex) {
      case 0:
        return InsightScreen();

      case 1:
        return IncidentScreen();

      case 2:
        return NewIncidentScreen();

      case 3:
        return MapScreen();
      case 4:
        return SettingsScreen();
      case 5:
        return Profile();
      default:
        return Container();
    }
  }
}
