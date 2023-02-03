import 'package:flutter/material.dart';

void main() {
  runApp(grid());
}

class grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          decoration: const BoxDecoration(
              color: Color(0xffebeced),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              )),
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3/2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: SelectCard(choice: choices[index]),
                  );
                })),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

List<Choice> choices = <Choice>[
  Choice(title: 'My Account', icon: Icons.account_box),
  Choice(title: 'Inventory', icon: Icons.inventory),
  Choice(title: 'Search Mechnic', icon: Icons.carpenter),
  Choice(title: 'Request', icon: Icons.request_quote),
  Choice(title: 'Analytics', icon: Icons.analytics),
  Choice(title: 'Contact Page', icon: Icons.contact_page),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child:
                        Icon(choice.icon, size: 40.0, color: textStyle!.color)),
                Text(choice.title,
                    style: TextStyle(
                      fontSize: 12,
                    )),
              ]),
        ));
  }
}
