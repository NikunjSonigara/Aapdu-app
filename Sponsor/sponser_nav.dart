// import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

class Sponsor_Nav extends StatefulWidget {
  @override
  _Sponsor_NavState createState() => _Sponsor_NavState();
}

class _Sponsor_NavState extends State<Sponsor_Nav> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        title: Text("Sponsors"),
        //centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.notifications_none),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {},
        //   )
        // ],
        //backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.lightGreen],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          //isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: [
            Tab(icon: Icon(Icons.security_rounded), text: 'Current Sponsor'),
            Tab(icon: Icon(Icons.new_releases), text: 'New Request'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(
        children: [
          buildPage('Current sponsor'),
          // buildPage('New Sponsor'),
        ],
      ),
    ),
  );

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}