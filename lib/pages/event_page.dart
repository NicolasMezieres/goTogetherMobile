import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

final events = [
  {
    "image": "assets/images/onigiri.png",
    "date": "13h à 13h30",
  },
  {
    "image": "assets/images/KingKevin.png",
    "date": "7h30 à 12h",
  },
];

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            final picture = event["image"];
            final date = event["date"];
            return Card(
              child: ListTile(
                leading: Image.asset("$picture"),
                title: Text("$date"),
              ),
            );
          },
        ),
      ),
    );
  }
}


// children: [
//             Container(
//                 height: 50,
//                 color: Colors.amber[500],
//                 child: Center(child: Text("test1"))),
//             Card(
//               child: ListTile(
//                 leading: FlutterLogo(size: 56.0),
//                 title: Text('Two-line ListTile'),
//                 subtitle: Text('Here is a second line'),
//                 trailing: Icon(Icons.more_vert),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.asset(
//                     "assets/images/onigiri.png",
//                   ),
//                 ),
//                 title: Text('Mon onigiri'),
//                 subtitle: Text("Ceci est une image d'un onigiri"),
//                 trailing: Icon(Icons.more_vert),
//               ),
//             )
//           ],