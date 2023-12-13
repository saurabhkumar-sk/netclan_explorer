import 'package:flutter/material.dart';

class PersonalTabBarScreen extends StatelessWidget {
  const PersonalTabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const SizedBox(
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: Color.fromARGB(255, 169, 167, 167),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  height: 3,
                  color: Color.fromARGB(255, 169, 167, 167),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_alt),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => const Text('data'),
        ));
  }
}
