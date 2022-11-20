// import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

import '../auth_controller.dart';

class AMC_Home extends StatefulWidget {
  @override
  _AMC_HomeState createState() => _AMC_HomeState();
}

class _AMC_HomeState extends State<AMC_Home> {
  @override

  var lName= "Watch";
  var l_No = 1234567890;
  var pincode = 123456;
  var tree_count = 123;
  var team_Count = 1;
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text("AMC Team"),
          actions: [
            IconButton(onPressed: () {
              AuthController.instance.logout();
            }, icon: Icon(Icons.logout))
          ],
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
              Tab(icon: Icon(Icons.free_cancellation), text: 'Free'),
              Tab(icon: Icon(Icons.workspace_premium), text: 'Premium'),
            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              // child: buildPage("text"),
              child: Container(
                margin: const EdgeInsets.only(left: 4, right: 4, top: 2),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Free('abc', 'Pipal', 9876543210, 395010, 'Mota Varachha'),
                      Free('abc', 'Pipal', 9876543210, 395010, 'Mota Varachha'),
                      Free('abc', 'Pipal', 9876543210, 395010, 'Mota Varachha'),
                      Free('abc', 'Pipal', 9876543210, 395010, 'Mota Varachha'),
                    ]
                ),
              ),
            ),
            SingleChildScrollView(
              child: buildPage("text"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
    child: Container(
      margin: const EdgeInsets.only(left: 4, right: 4, top: 2),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Premium('name', 'Neem', 123456, 1234567890, 'Bardoli', '29/11/2022', '11:00 AM'),
            Premium('name', 'Neem', 123456, 1234567890, 'Bardoli', '29/11/2022', '11:00 AM'),
            Premium('name', 'Neem', 123456, 1234567890, 'Bardoli', '29/11/2022', '11:00 AM'),
            Premium('name', 'Neem', 123456, 1234567890, 'Bardoli', '29/11/2022', '11:00 AM'),
          ]
      ),
    ),
    // ),
  );

  Widget Free(String name, String T_name, int pin, int pno, String P_name){
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h*0.28,
      width: w*98,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green[300],
      ),
      child: Column(
        children: <Widget>[
          Text("  Name : $name \n  Tree Name : $T_name \n  Leader Contact No.: $pno \n  Area Pincode: $pin \n  Place Name : $P_name",style: TextStyle(color:Colors.white,fontSize:20),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                icon: Icon( // <-- Icon
                  Icons.done,
                  size: 24.0,
                ),
                label: Text('Accept'), // <-- Text
              ),
              SizedBox(width: 20,),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                icon: Icon( // <-- Icon
                  Icons.close,
                  size: 24.0,
                ),
                label: Text('Reject'), // <-- Text
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Premium(String name, String T_name, int pin, int pno, String P_name, String date, String time){
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h*0.35,
      width: w*98,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green[300],
      ),
      child: Column(
        children: <Widget>[
          Text("  Name : $name \n  Tree Name : $T_name \n  Leader Contact No.: $pno \n  Area Pincode: $pin \n  Place Name : $P_name \n  Date : $date \n  Time : $time",style: TextStyle(color:Colors.white,fontSize:20),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                icon: Icon( // <-- Icon
                  Icons.done,
                  size: 24.0,
                ),
                label: Text('Accept'), // <-- Text
              ),
              SizedBox(width: 20,),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                icon: Icon( // <-- Icon
                  Icons.close,
                  size: 24.0,
                ),
                label: Text('Reject'), // <-- Text
              ),
            ],
          ),
        ],
      ),
    );
  }
}