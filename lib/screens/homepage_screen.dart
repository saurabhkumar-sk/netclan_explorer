import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 57, 82),
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.launch,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Refine',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: 'Explore',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.explore_rounded),
          //   label: 'Explore',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.explore_rounded),
          //   label: 'Explore',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}
