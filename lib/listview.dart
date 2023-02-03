import 'package:dashboard/Buttons.dart';
import 'package:dashboard/maps.dart';
import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  listview({Key? key}) : super(key: key);
  @override
  State<listview> createState() => _listview();
}
class _listview extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Color((0xFFe6e6e1))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      Spacer(),
                      Text(
                        "Search Mechanic",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Spacer(),
                      Icon(Icons.notifications, color: Color(0xFF030591)),
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => maps(),
                        ),
                      );
                    },
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 22, left: 25, right: 25),
                          child: Container(
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            width: double.infinity,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Icon(Icons.picture_in_picture),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Henry Curtis",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 4.0),
                                        child: Row(children: [
                                          Text(
                                            "\$45",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    133, 238, 137, 1),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "/hour",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ),
                                        ]),
                                      ),
                                    ]),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Icon(Icons.star, color: Colors.amber),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                                  Buttons(),
              ],
            )),
      ),
    );
  }
}