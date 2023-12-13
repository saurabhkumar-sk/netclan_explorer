import 'package:flutter/material.dart';
import 'package:netclan_explorer/utils/my_colors.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        top: 5,
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isSelected ? MyColors.blue : Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Text(
          widget.title,
          style: TextStyle(color: isSelected ? Colors.white : MyColors.blue),
        ),
      ),
    );
  }
}
