import 'package:flutter/material.dart';
import '../Sponsor/sponsor_home.dart';
import 'become_a_donater.dart';
import 'org_donaters.dart';

class Org_Bottom_Nav extends StatefulWidget {
  const Org_Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<Org_Bottom_Nav> createState() => _Org_Bottom_NavState();
}

class _Org_Bottom_NavState extends State<Org_Bottom_Nav> with TickerProviderStateMixin{
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  List<Widget> myChilders = [
    Org_Donaters(),
    Become_a_Donater(),
    Sponsor_Home()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: myChilders,),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomAppBar(
          child: TabBar(
            onTap: (index){
              setState(() {
                selectedIndex = index;
              });
            },
            indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                borderSide: BorderSide(
                    color: Colors.green,
                    width: 2
                )
            ),
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.only(bottom: 4),
                icon: selectedIndex == 0 ? Icon(Icons.group) : Icon(Icons.home_mini),
                child: Text('Donaters', style: TextStyle(
                    fontSize: 12
                ),),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 4),
                icon: Icon(Icons.landscape),
                child: Text('Become a Donater', style: TextStyle(
                    fontSize: 12
                ),),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 4),
                icon: Icon(Icons.clean_hands_outlined),
                child: Text('Become a Sponsor', style: TextStyle(
                    fontSize: 12
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
