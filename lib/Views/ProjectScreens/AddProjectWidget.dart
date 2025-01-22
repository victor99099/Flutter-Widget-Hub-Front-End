import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/ProjectsController.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProjectWidget extends StatelessWidget {
  AddProjectWidget({super.key});
  final Rx<String> selectedValue = 'Modern Style'.obs;
  final TextEditingController name = TextEditingController();
  final ProjectController projectController = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                color: const Color.fromARGB(255, 7, 41, 71).withOpacity(0.9),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              spacing: 30,
              children: [
                CustomTextField(controller: name, hintText: "Name"),
                DropdownMenu(
                  selectedValue: selectedValue,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (name.text.isEmpty) {
                          ElegantNotification.error(
                            width: 360,
                            position: Alignment.topRight,
                            title: const Text('Error'),
                            description: const Text('Fields Cannot Be Empty'),
                            onDismiss: () {},
                          ).show(context);
                          return;
                        }
                        await projectController.addProject(
                            int.parse(
                                Get.find<UserController>().user.value!.id),
                            name.text,
                            selectedValue.value,
                            context);
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          elevation: const WidgetStatePropertyAll(10),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: const WidgetStatePropertyAll(
                              Color.fromARGB(255, 2, 20, 34))),
                      child: const Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_box_rounded,
                            weight: 10,
                            size: 25,
                            color: Colors.white,
                          ),
                          Text(
                            "Add Project",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  // final IconData icon;
  const CustomTextField(
      {super.key,
      // required this.icon,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor:
            const Color.fromARGB(255, 3, 16, 27), // White background color
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(
                255, 3, 20, 39), // Dark blue border color when enabled
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(
                255, 3, 20, 39), // Dark blue border color when focused
            width: 3.0, // Border width when focused
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        // prefixIcon: Icon(
        //   icon,
        //   color: const Color.fromARGB(255, 109, 109, 109),
        // ),
        hintText: hintText,
        labelText: "Enter $hintText",
        hintStyle: const TextStyle(color: Color.fromARGB(255, 199, 199, 199)),
        labelStyle: const TextStyle(color: Colors.white),
      ),
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255)), // Text color
    );
  }
}

class DropdownMenu extends StatefulWidget {
  final Rx<String> selectedValue;
  const DropdownMenu({super.key, required this.selectedValue});

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: const Color.fromARGB(255, 3, 16, 27),
      decoration: InputDecoration(
        filled: true,
        fillColor:
            const Color.fromARGB(255, 3, 16, 27), // White background color
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(
                255, 3, 20, 39), // Dark blue border color when enabled
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(
                255, 3, 20, 39), // Dark blue border color when focused
            width: 3.0, // Border width when focused
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        // prefixIcon: Icon(
        //   icon,
        //   color: const Color.fromARGB(255, 109, 109, 109),
        // ),
        hintText: "Select Style",
        labelText: "Select Style",
        hintStyle: const TextStyle(color: Color.fromARGB(255, 199, 199, 199)),
        labelStyle: const TextStyle(color: Colors.white),
      ),
      value: widget.selectedValue.value,
      items: ["Modern Style", "Classic Style", "Elegant Style"]
          .map((e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              )))
          .toList(),
      onChanged: (value) {
        setState(() {
          widget.selectedValue.value = value!;
        });
      },
    );
  }
}
