import 'package:flutter/material.dart';
import 'package:whatsappclone/status_screen.dart';

import 'call_screen.dart';
import 'chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.search),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.more_vert,
                  ),
                  Container(
                    width: 15.0,
                  ),
                ],
                pinned: true,
                floating: true,
                backgroundColor: Color(0xFF075e54),
                title: Text("Whatsapp"),
                bottom: TabBar(
                  indicatorWeight: 3.0,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.photo_camera),
                    ),
                    Tab(
                      text: 'CHATS',
                    ),
                    Tab(
                      text: 'STATUS',
                    ),
                    Tab(
                      text: 'CALLS',
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Text('camera'),
              Chat(),
              Status(),
              Call(),
            ],
          ),
        ),
      ),
    );
  }
}
