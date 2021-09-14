import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:reporta/utility/constants.dart';
import 'package:reporta/widgets/form_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 14.0,
              ),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: FormWidget(
                tittle: "",
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Constants().getColorFromHex(("#05AAA7")),
                ),
                multiLines: false,
                name: "Search Location",
              ),
            ),
            Positioned(
              top: 190,
              left: 20,
              child: Column(
                children: [
                  Container(
                    width: 160,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage("assets/images/tractor.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.play_arrow_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Hazard",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "Today,8:22 AM",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/warning-mark.png",
                    width: 70,
                  )
                ],
              ),
            ),
            Positioned(
              top: 150,
              right: 30,
              child: Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/images/rider.png",
                    width: 70,
                  )),
            ),
            Positioned(
              bottom: 150,
              left: 20,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Constants().getColorFromHex(("#05AAA7")),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.flash_on,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: const [
                            Text("Flash Incident",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "Today,8:22 AM",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/button-fab-filters.png",
                          width: 70,
                        ),
                        Image.asset(
                          "assets/images/button-fab-gps.png",
                          width: 70,
                        )
                      ]),
                ],
              ),
            ),
            Positioned(
              bottom: 140,
              left: 80,
              child: Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset("assets/images/danger.png")),
            ),
            Positioned(
              bottom: 15,
              right: 30,
              child: Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/images/sos.png",
                    width: 70,
                  )),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/images/acident.png",
                    width: 70,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
