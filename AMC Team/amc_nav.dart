// import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

import '../auth_controller.dart';

class AMC_Nav_G extends StatefulWidget {
  @override
  _AMC_Nav_GState createState() => _AMC_Nav_GState();
}

class _AMC_Nav_GState extends State<AMC_Nav_G> {
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
              Tab(icon: Icon(Icons.security_rounded), text: 'Current Team'),
              Tab(icon: Icon(Icons.new_releases), text: 'New Request'),
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
                      curr_team('abc', 9876543210, 395010, 253),
                      curr_team('abc', 9876543210, 395010, 253),
                      curr_team('abc', 9876543210, 395010, 253),
                      curr_team('abc', 9876543210, 395010, 253),
                      // Container(
                      //   // height: h*0.29,
                      //   // width: w*90,
                      //   margin: EdgeInsets.all(20.0),
                      //   padding: EdgeInsets.all(12.0),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(5),
                      //     color: Colors.green[300],
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode \n  No. of Trees Planted: $tree_count",style: TextStyle(color:Colors.white,fontSize:20),),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       TextButton(
                      //         style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      //           foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      //         ),
                      //         onPressed: () { },
                      //         child: Text('Remove Team'),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   // height: h*0.29,
                      //   // width: w*90,
                      //   margin: EdgeInsets.all(20.0),
                      //   padding: EdgeInsets.all(12.0),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(5),
                      //     color: Colors.green[300],
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode \n  No. of Trees Planted: $tree_count",style: TextStyle(color:Colors.white,fontSize:20),),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       TextButton(
                      //         style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      //           foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      //         ),
                      //         onPressed: () { },
                      //         child: Text('Remove Team'),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   // height: h*0.29,
                      //   // width: w*90,
                      //   margin: EdgeInsets.all(20.0),
                      //   padding: EdgeInsets.all(12.0),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(5),
                      //     color: Colors.green[300],
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode \n  No. of Trees Planted: $tree_count",style: TextStyle(color:Colors.white,fontSize:20),),
                      //       SizedBox(
                      //         height: 10,
                      //       ),
                      //       TextButton(
                      //         style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      //           foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      //         ),
                      //         onPressed: () { },
                      //         child: Text('Remove Team'),
                      //       )
                      //     ],
                      //   ),
                      // ),
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
              new_team('xyz', 9876543210, 395006),
              new_team('xyz', 9876543210, 395006),
              new_team('xyz', 9876543210, 395006),
              new_team('xyz', 9876543210, 395006),
              // Container(
              //   // height: h*0.29,
              //   // width: w*90,
              //   margin: EdgeInsets.all(20.0),
              //   padding: EdgeInsets.all(12.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     color: Colors.green[300],
              //   ),
              //   child: Column(
              //     children: <Widget>[
              //       Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode",style: TextStyle(color:Colors.white,fontSize:20),),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Row(
              //         children: <Widget>[
              //           ElevatedButton.icon(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              //               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              //             ),
              //             onPressed: () {},
              //             icon: Icon( // <-- Icon
              //               Icons.done,
              //               size: 24.0,
              //             ),
              //             label: Text('Accept'), // <-- Text
              //           ),
              //           SizedBox(width: 20,),
              //           ElevatedButton.icon(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              //               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              //             ),
              //             onPressed: () {},
              //             icon: Icon( // <-- Icon
              //               Icons.close,
              //               size: 24.0,
              //             ),
              //             label: Text('Reject'), // <-- Text
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: h*0.29,
              //   // width: w*90,
              //   margin: EdgeInsets.all(20.0),
              //   padding: EdgeInsets.all(12.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     color: Colors.green[300],
              //   ),
              //   child: Column(
              //     children: <Widget>[
              //       Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode",style: TextStyle(color:Colors.white,fontSize:20),),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Row(
              //         children: <Widget>[
              //           ElevatedButton.icon(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              //               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              //             ),
              //             onPressed: () {},
              //             icon: Icon( // <-- Icon
              //               Icons.done,
              //               size: 24.0,
              //             ),
              //             label: Text('Accept'), // <-- Text
              //           ),
              //           SizedBox(width: 20,),
              //           ElevatedButton.icon(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              //               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              //             ),
              //             onPressed: () {},
              //             icon: Icon( // <-- Icon
              //               Icons.close,
              //               size: 24.0,
              //             ),
              //             label: Text('Reject'), // <-- Text
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   // height: h*0.29,
              //   // width: w*90,
              //   margin: EdgeInsets.all(20.0),
              //   padding: EdgeInsets.all(12.0),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     color: Colors.green[300],
              //   ),
              //   child: Column(
              //     children: <Widget>[
              //       Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode",style: TextStyle(color:Colors.white,fontSize:20),),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Row(
              //         children: <Widget>[
              //           ElevatedButton.icon(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              //               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              //             ),
              //             onPressed: () {},
              //             icon: Icon( // <-- Icon
              //               Icons.done,
              //               size: 24.0,
              //             ),
              //             label: Text('Accept'), // <-- Text
              //           ),
              //           SizedBox(width: 20,),
              //           ElevatedButton.icon(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              //               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              //             ),
              //             onPressed: () {},
              //             icon: Icon( // <-- Icon
              //               Icons.close,
              //               size: 24.0,
              //             ),
              //             label: Text('Reject'), // <-- Text
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ]
        ),
      ),
    // ),
  );

  Widget curr_team(String l_name, int l_co_n, int pin, int t_planted){
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.29,
      width: w * 98,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green[300],
      ),
      child: Column(
        children: [
          Text("Team $team_Count \n  Leader Name: $l_name \n  Leader Contact No.: $l_co_n \n  Area Pincode: $pin \n  No. of Trees Planted: $t_planted",style: TextStyle(color:Colors.white,fontSize:20),),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () { },
            child: Text('Remove Team'),
          )
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