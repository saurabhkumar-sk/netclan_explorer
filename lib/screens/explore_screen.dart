import 'package:flutter/material.dart';
import 'package:netclan_explorer/screens/personaltabbar_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final int _tabBarlength = 3;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _tabBarlength,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            padding: EdgeInsets.only(top: 19),
            unselectedLabelColor: Color.fromARGB(255, 193, 192, 192),
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: 'Personal',
              ),
              Tab(
                text: 'Business',
              ),
              Tab(
                text: 'Merchant',
              )
            ],
          ),
        ),
        body: const TabBarView(children: [
          PersonalTabBarScreen(),
          Text('Personal'),
          Text('Personal'),
        ]),
      ),
    );
  }
}
