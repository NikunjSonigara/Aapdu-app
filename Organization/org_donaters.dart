// import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

class Org_Donaters extends StatefulWidget {
  @override
  _Org_DonatersState createState() => _Org_DonatersState();
}

class _Org_DonatersState extends State<Org_Donaters> {
  @override
  // double w = MediaQuery.of(context).size.width;
  // double h = MediaQuery.of(context).size.height;
  var lName= "Watch";
  var l_No = 1234567890;
  var pincode = 123456;
  var tree_count = 123;
  var team_Count = 1;
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,

    child: Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text("Organization"),
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
            Tab(icon: Icon(Icons.security_rounded), text: 'Land Donaters'),
            Tab(icon: Icon(Icons.new_releases), text: 'Our Sponsors'),
          ],
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body:

      // SingleChildScrollView(
      //   child: Container(
      //     margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      //     child: Column(
      //       // mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children:<Widget>[
      //           Container(
      //             // height: h*0.29,
      //             // width: w*90,
      //             margin: EdgeInsets.all(20.0),
      //             padding: EdgeInsets.all(12.0),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(5),
      //               color: Colors.green[300],
      //             ),
      //             child: Column(
      //               children: [
      //                 Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode \n  No. of Trees Planted: $tree_count",style: TextStyle(color:Colors.white,fontSize:20),),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 TextButton(
      //                   style: ButtonStyle(
      //                     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      //                     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      //                   ),
      //                   onPressed: () { },
      //                   child: Text('Remove Team'),
      //                 )
      //               ],
      //             ),
      //           ),
      //           Container(
      //             // height: h*0.29,
      //             // width: w*90,
      //             margin: EdgeInsets.all(20.0),
      //             padding: EdgeInsets.all(12.0),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(5),
      //               color: Colors.green[300],
      //             ),
      //             child: Column(
      //               children: [
      //                 Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode \n  No. of Trees Planted: $tree_count",style: TextStyle(color:Colors.white,fontSize:20),),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 TextButton(
      //                   style: ButtonStyle(
      //                     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      //                     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      //                   ),
      //                   onPressed: () { },
      //                   child: Text('Remove Team'),
      //                 )
      //               ],
      //             ),
      //           ),
      //           Container(
      //             // height: h*0.29,
      //             // width: w*90,
      //             margin: EdgeInsets.all(20.0),
      //             padding: EdgeInsets.all(12.0),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(5),
      //               color: Colors.green[300],
      //             ),
      //             child: Column(
      //               children: [
      //                 Text("Team $team_Count \n  Leader Name: $lName \n  Leader Contact No.: $l_No \n  Area Pincode: $pincode \n  No. of Trees Planted: $tree_count",style: TextStyle(color:Colors.white,fontSize:20),),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 TextButton(
      //                   style: ButtonStyle(
      //                     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      //                     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      //                   ),
      //                   onPressed: () { },
      //                   child: Text('Remove Team'),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ]
      //     ),
      //   ),
      // ),

      TabBarView(
        children: [
          SingleChildScrollView(
            // child: buildPage("text"),
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
                    Container(
                      // height: h*0.29,
                      // width: w*90,
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green[300],
                      ),
                      child: Column(
                        children: [
                          Text("Organization_Name\nOwner_Name\nLocation",style: TextStyle(color:Colors.white,fontSize:20),),
                          SizedBox(
                            height: 10,
                          ),
                          // TextButton(
                          //   style: ButtonStyle(
                          //     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          //     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          //   ),
                          //   onPressed: () { },
                          //   child: Text('Remove Team'),
                          // )
                          Row(
                              children: <Widget> [
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child:Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: h*0.29,
                      // width: w*90,
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green[300],
                      ),
                      child: Column(
                        children: [
                          Text("Organization_Name\nOwner_Name\nLocation",style: TextStyle(color:Colors.white,fontSize:20),),
                          SizedBox(
                            height: 10,
                          ),
                          // TextButton(
                          //   style: ButtonStyle(
                          //     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          //     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          //   ),
                          //   onPressed: () { },
                          //   child: Text('Remove Team'),
                          // )
                          Row(
                              children: <Widget> [
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child:Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: h*0.29,
                      // width: w*90,
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green[300],
                      ),
                      child: Column(
                        children: [
                          Text("Organization_Name\nOwner_Name\nLocation",style: TextStyle(color:Colors.white,fontSize:20),),
                          SizedBox(
                            height: 10,
                          ),
                          // TextButton(
                          //   style: ButtonStyle(
                          //     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          //     foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          //   ),
                          //   onPressed: () { },
                          //   child: Text('Remove Team'),
                          // )
                          Row(
                              children: <Widget> [
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child:Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Image.asset('img/g.jpg'),
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
          ),
          SingleChildScrollView(
            child: buildPage("text"),
          ),



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
          //       Text("Product Name: $pName \nAd ID: $adID \nViews: $views \nClicks: $clicks \nAmmount: $ammount INR",style: TextStyle(color:Colors.white,fontSize:20),),
          //       SizedBox(
          //         height: 10,
          //       ),
          //       TextButton(
          //         style: ButtonStyle(
          //           backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          //           foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          //         ),
          //         onPressed: () { },
          //         child: Text('Remove Ad'),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    ),
  );

  Widget buildPage(String text) => Center(
    // child: Text(
    //   text,
    //   style: TextStyle(fontSize: 28),
    // ),
    // SingleChildScrollView(
    child: Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Container(
              // height: h*0.29,
              // width: w*90,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green[300],
              ),
              child: Column(
                children: <Widget>[
                  Image.asset('img/g.jpg'),
                  Text("Sponsor Ferm Name\nSponsor Name",style: TextStyle(color:Colors.white,fontSize:20),),
                  SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     ElevatedButton.icon(
                  //       style: ButtonStyle(
                  //         backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  //         foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  //       ),
                  //       onPressed: () {},
                  //       icon: Icon( // <-- Icon
                  //         Icons.done,
                  //         size: 24.0,
                  //       ),
                  //       label: Text('Accept'), // <-- Text
                  //     ),
                  //     SizedBox(width: 20,),
                  //     ElevatedButton.icon(
                  //       style: ButtonStyle(
                  //         backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  //         foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  //       ),
                  //       onPressed: () {},
                  //       icon: Icon( // <-- Icon
                  //         Icons.close,
                  //         size: 24.0,
                  //       ),
                  //       label: Text('Reject'), // <-- Text
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            Container(
              // height: h*0.29,
              // width: w*90,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green[300],
              ),
              child: Column(
                children: <Widget>[
                  Image.asset('img/g.jpg'),
                  Text("Sponsor Ferm Name\nSponsor Name",style: TextStyle(color:Colors.white,fontSize:20),),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              // height: h*0.29,
              // width: w*90,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green[300],
              ),
              child: Column(
                children: <Widget>[
                  Image.asset('img/g.jpg'),
                  Text("Sponsor Ferm Name\nSponsor Name",style: TextStyle(color:Colors.white,fontSize:20),),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ]
      ),
    ),
    // ),
  );
}