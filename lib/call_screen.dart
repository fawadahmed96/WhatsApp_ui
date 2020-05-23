import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CallListTile(
            nameText: "ali",
            dateText: "Today 2:35 am",
          ),
          CallListTile(
            nameText: "john",
            dateText: "Today 6:00 pm",
          ),
          CallListTile(
            nameText: "sunny",
            dateText: "Today 3:04 am",
          ),
          CallListTile(
            nameText: "sarah",
            dateText: "Yesterday 11:00 pm",
          ),
          CallListTile(
            nameText: "Jonahtan",
            dateText: "Yesterday 1:00 pm",
          ),
        ],
      ),
    );
  }
}

class CallListTile extends StatelessWidget {
  CallListTile({this.dateText, this.nameText});
  final String nameText;
  final String dateText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/regaine-for-men-minoxidil-1584286450.jpg"),
      ),
      title: Text(nameText),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_downward,
            color: Colors.green,
          ),
          Text(dateText),
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: Color(0xFF075e54),
      ),
    );
  }
}
