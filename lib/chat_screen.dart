import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> names = [
    'fawad',
    'ali',
    'hammad',
    'hama',
    'ishtiaq',
    'naviad',
    'quram',
    'atif',
    'kashif',
    'mohammad',
    'fayyaz',
    'murtaza',
    'anas',
    'waleed',
    'arham'
  ];
  List<String> text = [
    'hello',
    'how r u',
    'what r u doing',
    'hello',
    'how r u',
    'what r u doing',
    'how r u',
    'what r u doing',
    'hello',
    'how r u',
    'what r u doing',
    'what r u doing',
    'hello',
    'how r u',
    'what r u doing',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF25d366),
        child: Icon(Icons.message),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/regaine-for-men-minoxidil-1584286450.jpg"),
                  ),
                  title: Text(names[index]),
                  subtitle: Text(text[index]),
                  trailing: Text("10:00 AM"),
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
