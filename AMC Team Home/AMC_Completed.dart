// import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

import '../auth_controller.dart';

class AMC_Completed extends StatefulWidget {
  @override
  _AMC_CompletedState createState() => _AMC_CompletedState();
}

class _AMC_CompletedState extends State<AMC_Completed> {
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
                      curr_team('abc', 9876543210, 395010, 'ABC', '29/11/2022'),
                      curr_team('abc', 9876543210, 395010, 'asd', '29/11/2022'),
                      curr_team('abc', 9876543210, 395010, 'asd', '29/11/2022'),
                      curr_team('abc', 9876543210, 395010, 'asd', '29/11/2022'),
                    ]
                ),
              ),
            ),
        ),
    );
  }

  // Widget buildPage(String text) => Center(
  //   child: Container(
  //     margin: const EdgeInsets.only(left: 4, right: 4, top: 2),
  //     child: Column(
  //       // mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children:<Widget>[
  //           new_team('xyz', 9876543210, 395006),
  //           new_team('xyz', 9876543210, 395006),
  //           new_team('xyz', 9876543210, 395006),
  //           new_team('xyz', 9876543210, 395006),
  //         ]
  //     ),
  //   ),
  //   // ),
  // );

  Widget curr_team(String l_name, int l_co_n, int pin, String pname, String date){
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
          Text("  Name: $l_name \n  Contact No.: $l_co_n \n  Pincode: $pin \n  Place Name : $pname \n  Date: $date'",style: TextStyle(color:Colors.white,fontSize:20),),
        ],
      ),
    );
  }

  Widget new_team(String l_name, int l_co_n, int pin){
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h*0.248,
      width: w*98,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green[300],
      ),
      child: Column(
        children: <Widget>[
          Text("Team $team_Count \n  Leader Name: $l_name \n  Leader Contact No.: $l_co_n \n  Area Pincode: $pin",style: TextStyle(color:Colors.white,fontSize:20),),
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
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
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