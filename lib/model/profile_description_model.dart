import 'package:flutter/material.dart';
import 'package:netclan_explorer/utils/my_colors.dart';

class ProfileDescription {
  final String name;
  final String location;
  final String distance;
  final Widget slider;
  final String purpose;
  final String status;

  ProfileDescription({
    required this.name,
    required this.location,
    required this.distance,
    required this.slider,
    required this.purpose,
    required this.status,
  });
}

//////////////////////////////////////////////////////////////////////////////////////////
List<ProfileDescription> profileDescriptionList = [
  ProfileDescription(
    name: "Garvish jain",
    location: "Udaipur | Student",
    distance: "Within 1.0 KM",
    slider: Padding(
      padding: const EdgeInsets.only(left: 70.0, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: MyColors.blue,
            ),
            height: 12,
            width: 30,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 149, 174, 185),
            ),
            height: 12,
            width: 95,
          ),
        ],
      ),
    ),
    purpose: "Cofee | Bussiness | Friendship",
    status: 'Hi community! I am open to new connections "😊"',
  ),
  ////////
  ProfileDescription(
    name: "Disha Singh",
    location: "Udaipur | pursuing graadution",
    distance: "Within 1.3 KM",
    slider: Padding(
      padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: MyColors.blue,
            ),
            height: 12,
            width: 50,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 149, 174, 185),
            ),
            height: 12,
            width: 75,
          ),
        ],
      ),
    ),
    purpose: "Cofee | Bussiness | Friendship",
    status: "Hi community! I am open to new connections '😊'",
  ),
  ///////
  ProfileDescription(
    name: "Raj Kumar",
    location: "Udaipur | Student",
    distance: "Within 1.9 KM",
    slider: Padding(
      padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: MyColors.blue,
            ),
            height: 12,
            width: 75,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 149, 174, 185),
            ),
            height: 12,
            width: 50,
          ),
        ],
      ),
    ),
    purpose: "Cofee | Bussiness | Friendship",
    status: "Hi community! I am open to new connections '😊'",
  ),
  ///////
  ProfileDescription(
    name: "Saurabh Kumar",
    location: "Udaipur | Student",
    distance: "Within 1.9 KM",
    slider: Padding(
      padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: MyColors.blue,
            ),
            height: 12,
            width: 75,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 149, 174, 185),
            ),
            height: 12,
            width: 50,
          ),
        ],
      ),
    ),
    purpose: "Cofee | Bussiness | Friendship",
    status: "Hi community! I am open to new connections '😊'",
  ),
  ///////
  ProfileDescription(
    name: "Rajesh Kumar",
    location: "Udaipur | Student",
    distance: "Within 1.9 KM",
    slider: Padding(
      padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: MyColors.blue,
            ),
            height: 12,
            width: 75,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 149, 174, 185),
            ),
            height: 12,
            width: 50,
          ),
        ],
      ),
    ),
    purpose: "Cofee | Bussiness | Friendship",
    status: "Hi community! I am open to new connections '😊'",
  ),
  ///////
  ProfileDescription(
    name: "Shyam Kumar",
    location: "Udaipur | Student",
    distance: "Within 1.9 KM",
    slider: Padding(
      padding: const EdgeInsets.only(left: 70, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              color: MyColors.blue,
            ),
            height: 12,
            width: 70,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 149, 174, 185),
            ),
            height: 12,
            width: 55,
          ),
        ],
      ),
    ),
    purpose: "Cofee | Bussiness | Friendship",
    status: "Hi community! I am open to new connections '😊'",
  ),
];

List<String> dpNameList = [
  "GJ",
  "DS",
  "SK",
  "SK",
  "RK",
  "SK",
];
