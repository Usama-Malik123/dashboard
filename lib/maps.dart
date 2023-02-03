import 'dart:collection';
import 'dart:html';
import 'package:dashboard/Buttons.dart';
import 'package:dashboard/gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class maps extends StatefulWidget {
  maps({Key? key}) : super(key: key);

  @override
  State<maps> createState() => _maps();
}

class _maps extends State<maps> {
  final List<Map> myProducts =
      List.generate(3, (index) => {"id": index, "name": "Product $index"})
          .toList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Expanded(
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(0, 0),
                  zoom: 1,
                  maxZoom: 19,
                ),
                children: [
                  TileLayerWidget(
                    options: TileLayerOptions(
                      urlTemplate:
                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c'],
                      maxZoom: 19,
                    ),
                  ),
                  LocationMarkerLayerWidget(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xff06d13c),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(Icons.zoom_in, size: 20, color: Colors.white),
                      Spacer(),
                      Text(
                        "Nearby Location",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Spacer(),
                      Icon(Icons.add, size: 20, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 340),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: const Radius.circular(35.0),
                  ),
                  color: Colors.amber,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_drop_up_rounded,
                              color: Colors.amber),
                          Spacer(),
                          Text("Inventory",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12)),
                          Spacer(),
                          
                             Icon(Icons.arrow_drop_down,
                                size: 20, color: Colors.white),
                          
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: const Radius.circular(35.0),
                          ),
                          color: Color(0xFFe6e6e1),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: Row(
                              children: [
                                Icon(Icons.menu_rounded,size: 15, color: Colors.pink,),
                                
                                Spacer(),
                                Text(
                                  "Workplace",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                Icon(Icons.arrow_drop_up_rounded,
                                    size: 22, color: Colors.grey),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 140,
                                          childAspectRatio: 1 / 0.5,
                                          crossAxisSpacing: 38,
                                          mainAxisSpacing: 38),
                                  itemCount: myProducts.length,
                                  itemBuilder: (BuildContext ctx, index) {
                                    return Container(
                                      
                                      alignment: Alignment.center,
                                      
                                      child: Text(myProducts[index]["name"]),
                                    
                                      decoration: BoxDecoration(
                                          color: Colors.amber.shade100,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                              
                                    );
                                  }),
                            ),
                          ),
                          
                            Buttons(),
                        ]
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
    );
  }
}
