import 'package:flutter/material.dart';
import 'package:netclan_explorer/model/profile_description_model.dart';
import 'package:netclan_explorer/utils/my_colors.dart';

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
        itemCount: profileDescriptionList.length,
        itemBuilder: (context, index) => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 15),
              child: Card(
                surfaceTintColor: Colors.transparent,
                elevation: 2.5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 240),
                      child: TextButton.icon(
                        style: const ButtonStyle(
                          iconColor: MaterialStatePropertyAll(
                            MyColors.lightblue,
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 18,
                        ),
                        label: const Text(
                          "INVITE",
                          style: TextStyle(color: MyColors.lightblue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Text(
                        profileDescriptionList[index].name,
                        style: const TextStyle(
                          color: MyColors.lightblue,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Text(
                        profileDescriptionList[index].location,
                        style: const TextStyle(
                          color: MyColors.lightblue,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Text(
                        profileDescriptionList[index].distance,
                        style: const TextStyle(
                          color: MyColors.lightblue,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    profileDescriptionList[index].slider,
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        profileDescriptionList[index].purpose,
                        style: const TextStyle(
                          color: MyColors.lightblue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints.loose(
                        const Size(
                          290,
                          double.maxFinite,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          profileDescriptionList[index].status,
                          style: const TextStyle(
                            color: MyColors.lightblue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 40,
              child: Container(
                height: 90,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 112, 134, 145),
                ),
                child: Center(
                  child: Text(
                    dpNameList[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      color: MyColors.lightblue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
