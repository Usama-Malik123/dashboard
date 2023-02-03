import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
          bottom: 0,
          child: Container(
            height: 66,
            decoration: BoxDecoration(color: Color(0xFF030591)),
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.mail, color: Colors.white),
                    Spacer(),
                     Icon(Icons.lightbulb, color: Colors.white),
                          Spacer(),
                    Icon(Icons.contact_phone, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}
