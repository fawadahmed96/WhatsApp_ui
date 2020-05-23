import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF25d366),
        child: Icon(Icons.photo_camera),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/regaine-for-men-minoxidil-1584286450.jpg"),
              ),
              title: Text("My Status"),
              subtitle: Text("My Status"),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              color: Colors.grey[200],
//              width: MediaQuery.of(context).size.width,
              height: 20.0,
//              color: Colors.grey,
              child: Text(
                "Recent Updates",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/regaine-for-men-minoxidil-1584286450.jpg"),
              ),
              title: Text("My Status"),
              subtitle: Text("My Status"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/regaine-for-men-minoxidil-1584286450.jpg"),
              ),
              title: Text("My Status"),
              subtitle: Text("My Status"),
            ),
          ],
        ),
      ),
    );
  }
}
