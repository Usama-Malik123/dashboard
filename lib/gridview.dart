import 'package:dashboard/grid.dart';
import 'package:flutter/material.dart';

import 'listview.dart';

class gridview extends StatefulWidget {
  gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => _gridview();
}

class _gridview extends State<gridview> {
  final List<Map> myProducts =
      List.generate(6, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Color(0xFF030591)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                       Icon(Icons.menu_outlined,color: Colors.white),
                      Spacer(),
                      Icon(Icons.picture_in_picture,color: Colors.white),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Dashboard",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Last Update 25 feb 2020",
                      style: TextStyle(fontSize: 11,color: Colors.grey),
                    ),
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 35),
                //     child: Container(
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(25.0),
                //             topRight: const Radius.circular(25.0),
                //           ),
                //          color: Color(0xFFe6e6e1)
                //           ),
                //       child: GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => listview(),
                //           ),
                //           );
                //         },
                //         child: Expanded(
                //           child: Padding(
                //             padding: const EdgeInsets.all(45.0),
                //             child: GridView.builder(
                //                 gridDelegate:
                //                     SliverGridDelegateWithMaxCrossAxisExtent(
                //                         maxCrossAxisExtent: 190,
                //                         childAspectRatio: 3/ 2,
                //                         crossAxisSpacing: 20,
                //                         mainAxisSpacing: 20),
                //                 itemCount: myProducts.length,
                //                 itemBuilder: (BuildContext ctx, index) {
                //                   return Container(
                //                     alignment: Alignment.center,
                //                     child: Text(myProducts[index]["name"]),
                //                     decoration: BoxDecoration(
                //                         color: Colors.white,
                //                         borderRadius: BorderRadius.circular(15)),
                //                   );
                //                 }),
                //           ),
                //         ),

                //       ),
                      
                //     ),
                //   ),
                // ),
                grid(),
              ],
            )),
      ),
    );
  }
}
