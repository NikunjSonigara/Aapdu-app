// import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

import '../auth_controller.dart';

class AMC_Slot_Details extends StatefulWidget {
  @override
  _AMC_Slot_DetailsState createState() => _AMC_Slot_DetailsState();
}

class _AMC_Slot_DetailsState extends State<AMC_Slot_Details> {
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
          elevation: 20,
          titleSpacing: 20,
        ),
        body:SingleChildScrollView(
          // child: buildPage("text"),
          child: Container(
            margin: const EdgeInsets.only(left: 4, right: 4, top: 2),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  org('abc', 9876543210, 395010, 'Yogichok', 10),
                  org('abc', 9876543210, 395010, 'asd', 1),
                  org('abc', 9876543210, 395010, 'asd', 34),
                  org('abc', 9876543210, 395010, 'asd', 6),
                ]
            ),
          ),
        ),
      ),
    );
  }

  Widget org(String l_name, int l_co_n, int pin, String address, int slots){
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.2,
      width: w * 98,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green[300],
      ),
      child: Column(
        children: [
          Text("  Owner Name: $l_name \n  Contact No.: $l_co_n \n  Land Pincode: $pin \n  Address : $address \n  Total Empty Slots: $slots",style: TextStyle(color:Colors.white,fontSize:20),),
        ],
      ),
    );
  }
}