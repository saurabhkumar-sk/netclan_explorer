import 'package:flutter/material.dart';
import 'package:netclan_explorer/screens/explore_screen.dart';
import 'package:netclan_explorer/screens/refine_screen.dart';
import 'package:netclan_explorer/utils/my_colors.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _currentIndex = 0;
  final screens = [
    const ExploreScreen(),
    const Center(child: Text('NetWork')),
    const Center(child: Text('Chat')),
    const Center(child: Text('Contact')),
    const Center(child: Text('Groups')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.blue,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        title: const ListTile(
          title: Text(
            'Saurabh Kumar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'Saurabh Kumar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RefineScreen(),
                ),
              );
            },
            icon: const Column(
              children: [
                Icon(
                  Icons.launch,
                ),
                Text(
                  'Refine',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            color: Colors.white,
          ),
        ],
        // bottom: TabBar(tabs: [
        //   Text('data'),
        //   Text('data'),
        //   Text('data'),
        // ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: MyColors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye),
              label: 'Explore',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.network_check_rounded),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_cal),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          ),
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}
