import 'package:flutter/material.dart';
import 'package:mywhatsapp/Screens/Community.dart';
import 'Calls.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Status.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, initialIndex: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.people_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
            Tab(
              child: Text(
                "UPDATES",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: [
          Community(),
          Camera(),
          Chat(),
          Status(),
          Calls(),
        ],
        controller: _tabController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff075E54),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
