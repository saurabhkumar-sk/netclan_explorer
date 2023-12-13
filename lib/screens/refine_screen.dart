import 'package:flutter/material.dart';
import 'package:netclan_explorer/screens/homepage_screen.dart';
import 'package:netclan_explorer/utils/custom_button.dart';
import 'package:netclan_explorer/utils/dropdown_list.dart';
import 'package:netclan_explorer/utils/my_colors.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(
        text: 'Hi community! I am open to new connections "😊"');
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  String dropdownValue = 'one';
  int sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.white,
        ),
        title: const Text(
          'Refine',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Select Your Availability',
              style: TextStyle(
                color: MyColors.lightblue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: DropdownButton<String>(
                  style: const TextStyle(
                    fontSize: 15,
                    color: MyColors.blue,
                  ),
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down_rounded),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: [
                    DropdownMenuItem<String>(
                      value: "one",
                      child: Text(
                        DropDownList.availability[0].toString(),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "two",
                      child: Text(
                        DropDownList.availability[1].toString(),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "three",
                      child: Text(
                        DropDownList.availability[2].toString(),
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: "four",
                      child: Text(
                        DropDownList.availability[3].toString(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Add Your Status',
              style: TextStyle(
                color: MyColors.lightblue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _textEditingController,
              autocorrect: true,
              maxLength: 250,
              minLines: 1,
              maxLines: 6,
              style: const TextStyle(fontSize: 15, color: MyColors.blue),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Text(
              "Select Hyper local Distance",
              style: TextStyle(
                color: MyColors.lightblue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 1, // Set the height of the slider track
                thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 8.0), // Set the thumb radius
                overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 20.0), // Set the overlay radius
              ),
              child: Slider(
                activeColor: const Color.fromARGB(255, 14, 26, 66),
                divisions: 100,
                label: sliderValue.toString(),
                value: sliderValue.toDouble(),
                onChanged: (value) {
                  setState(() {
                    sliderValue = value.toInt();
                  });
                },
                min: 0,
                max: 100,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 Km',
                    style: TextStyle(
                      color: MyColors.blue,
                    ),
                  ),
                  Text(
                    '100 Km',
                    style: TextStyle(
                      color: MyColors.blue,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Select Purpose",
              style: TextStyle(
                color: MyColors.lightblue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const Wrap(
              children: [
                CustomButton(title: 'coofee'),
                CustomButton(title: 'Business'),
                CustomButton(title: 'Hobbies'),
                CustomButton(title: 'Friendship'),
                CustomButton(title: 'Movies'),
                CustomButton(title: 'Dinning'),
                CustomButton(title: 'Dating'),
                CustomButton(title: 'Matrimony'),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(MyColors.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePageScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Save & Explore',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
