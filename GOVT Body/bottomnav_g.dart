import 'package:flutter/material.dart';
import '../Citizen/abouttree.dart';
import '../AMC Team/amc_nav.dart';
import '../Citizen/homepage.dart';
import '../plant.dart';
import '../Citizen/profile_page.dart';
// import 'profilepage.dart';
import '../Citizen/scanner.dart';
import '../Sponsor/sponser_nav.dart';
import '../image_data.dart';

class Bottom_Nav_G extends StatefulWidget {
  const Bottom_Nav_G({Key? key}) : super(key: key);

  @override
  State<Bottom_Nav_G> createState() => _Bottom_Nav_GState();
}

class _Bottom_Nav_GState extends State<Bottom_Nav_G>
    with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  List<Widget> myChilders = [
    AMC_Nav_G(),
    Sponsor_Nav(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: myChilders,
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomAppBar(
          child: TabBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                borderSide: BorderSide(color: Colors.green, width: 2)),
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.only(bottom: 4),
                icon: selectedIndex == 0
                    ? Icon(Icons.home)
                    : Icon(Icons.home_mini),
                child: Text(
                  'Home',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 4),
                icon: Icon(Icons.park),
                child: Text(
                  'Tree',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
