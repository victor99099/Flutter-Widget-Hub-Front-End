import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterwidgethub/Models/Entities/Widgets.dart';
import 'package:flutterwidgethub/Views/MainScreens/CommonWidgets.dart';
import 'package:flutterwidgethub/Views/MainScreens/mainScreen.dart';
import 'package:flutterwidgethub/Views/ProjectScreens/EditProjectWidget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Ccontrollers/ProjectsController.dart';
import '../../Models/Entities/Projects.dart';

class ProjectDetailScreen extends StatefulWidget {
  final int projIndex;
  const ProjectDetailScreen({super.key, required this.projIndex});

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  late ProjectController projectController;
  late Project project;
  late int styleIndex;

  int getStyleCode(String style) {
    switch (style) {
      case 'Modern Style':
        return 0;
      case 'Classic Style':
        return 1;
      case 'Elegant Style':
        return 2;
    }
    return 0;
  }

  @override
  void initState() {
    super.initState();
    projectController = Get.put(ProjectController());
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/Background.jpeg", // Your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0, // Horizontal blur strength
                sigmaY: 10.0, // Vertical blur strength
              ),
              child: Container(
                color: const Color.fromARGB(255, 6, 14, 56)
                    .withOpacity(0.8), // Transparent overlay
              ),
            ),
          ),
          Positioned(
            top: 20, // Adjust top position for spacing
            left: 35, // Adjust left position for alignment
            child: Row(
              spacing: 20,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 3, 14, 24),
                      size: 30,
                    ),
                  ),
                ),
                Text(
                  "Project Repository",
                  style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Positioned(
              top: Get.height * 0.11, // Adjust top position for spacing
              left: 35, // Adjust left position for alignment
              right: 35,
              bottom: 20,
              child: ScrollConfiguration(
                behavior: CustomScrollGlowColorBehavior(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 16, right: 32, left: 32),
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name : ${projectController.projects[widget.projIndex].projectName}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Style : ${projectController.projects[widget.projIndex].projectStyle}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: EditProjectWidget(
                                        initValue: projectController
                                            .projects[widget.projIndex]
                                            .projectName,
                                        proj_id: projectController
                                            .projects[widget.projIndex]
                                            .projectId,
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  );
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: const Color.fromARGB(255, 22, 56, 83)
                                      .withOpacity(0.9),
                                  elevation: 10,
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Icon(
                                      Icons.edit_square,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        indent: 30,
                        endIndent: 30,
                        color: Colors.white,
                        thickness: 2,
                      ),
                      projectController
                                  .projects[widget.projIndex].widgets.length ==
                              0
                          ? SizedBox.shrink()
                          : Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width: Get.width * 0.2,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 30, top: 10),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      await projectController
                                          .downloadWidgetCodesByIndex(
                                              widget.projIndex,
                                              styles[getStyleCode(
                                                  projectController
                                                      .projects[
                                                          widget.projIndex]
                                                      .projectStyle)]);
                                    },
                                    style: ButtonStyle(
                                      elevation: WidgetStateProperty.all(0),
                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      backgroundColor: WidgetStateProperty.all(
                                        const Color.fromARGB(255, 166, 201, 228)
                                            .withOpacity(0),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.download_for_offline,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "Download Widgets",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      projectController
                                  .projects[widget.projIndex].widgets.length ==
                              0
                          ? Center(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 16.0, bottom: 16, right: 32, left: 32),
                                width: Get.width * 0.3,
                                height: Get.height * 0.6,
                                child: Column(
                                  spacing: 20,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Project Is Empty",
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily,
                                          color: Colors.white,
                                          fontSize: 20,
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.offAll(() => MainScreen());
                                      },
                                      style: ButtonStyle(
                                        elevation: WidgetStateProperty.all(0),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            side:
                                                BorderSide(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                          const Color.fromARGB(
                                                  255, 166, 201, 228)
                                              .withOpacity(0),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add_box_rounded,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              "Add Widgets",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Obx(
                              () => Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, bottom: 16, right: 32, left: 32),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: projectController
                                        .projects[widget.projIndex]
                                        .widgets
                                        .length,
                                    itemBuilder: (context, index) {
                                      final Widget = projectController
                                          .projects[widget.projIndex]
                                          .widgets[index];
                                      return ProjectWidgetCard(
                                        index: index,
                                        widget: Widget,
                                        style: projectController
                                            .projects[widget.projIndex]
                                            .projectStyle,
                                      );
                                    }),
                              ),
                            ),
                       projectController
                                  .projects[widget.projIndex].widgets.length ==
                              0
                          ? SizedBox.shrink() :
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 16, right: 32, left: 32),
                        child: Obx(
                          () => UserStyleBox(
                              Heading: "Style Code (Must Copy)",
                              code: styles[getStyleCode(projectController
                                  .projects[widget.projIndex].projectStyle)]),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class ProjectWidgetCard extends StatefulWidget {
  final WidgetModel widget;
  final int index;
  final String style;
  const ProjectWidgetCard(
      {super.key,
      required this.index,
      required this.style,
      required this.widget});

  @override
  State<ProjectWidgetCard> createState() => _ProjectWidgetCardState();
}

class _ProjectWidgetCardState extends State<ProjectWidgetCard> {
  late List<Widget> widgetsList;
  @override
  void initState() {
    super.initState();
    // Choose the style you want, for example, ModernStyles
    StylesBase currentStyle = getListByStyle(widget.style);
    // Store the list of widgets in the variable
    widgetsList = widgetsNumber(context, currentStyle);
  }

  StylesBase getListByStyle(String style) {
    switch (style) {
      case 'Modern Style':
        return ModernStyles();
      case 'Classic Style':
        return ClassicStyles();
      case 'Elegant Style':
        return ElegantStyles();
    }
    return ModernStyles();
  }

  @override
  Widget build(BuildContext context) {
    return UserWidgetBox(
        Heading: "${widget.index + 1} - ${widget.widget.widgetName}",
        code: widgetsCodeNumber[widget.widget.widgetNumber - 1],
        widgetId: widget.widget.widgetId,
        widget: widgetsList[widget.widget.widgetNumber - 1]);
  }
}

class CustomScrollGlowColorBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    // Change only the color of the glow without affecting size
    return GlowingOverscrollIndicator(
      axisDirection: axisDirection,
      color: const Color.fromARGB(255, 255, 255, 255), // Change the color here
      showLeading: true,
      showTrailing: true,
      child: child,
    );
  }
}
