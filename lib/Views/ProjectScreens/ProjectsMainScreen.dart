import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';
import 'package:flutterwidgethub/Models/Entities/Projects.dart';
import 'package:flutterwidgethub/Views/ProjectScreens/AddProjectWidget.dart';
import 'package:flutterwidgethub/Views/ProjectScreens/ProjectDetailScren.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Ccontrollers/ProjectsController.dart';
// import 'package:flutterwidgethub/Controllers/ProjectController.dart'; // Adjust path if necessary

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // Get the ProjectController instance
    final projectController = Get.put(ProjectController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 28, 46),
      body: Stack(
        children: [
          // Background Image
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
              bottom: 30,
              right: null,
              left: MediaQuery.of(context).size.width * 0.5 - 80,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: AddProjectWidget(),
                      backgroundColor: Colors.transparent,
                    ),
                  );
                },
                child: Container(
                  // width: 80,
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.add_box_rounded,
                        weight: 10,
                        color: Color.fromARGB(255, 3, 14, 24),
                      ),
                      Text(
                        "Add Project",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 14, 24),
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              )),

          // Back Button
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
                  "Projects",
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
            top: 60, // Adjust top position for spacing
            left: 20, // Adjust left position for alignment
            right: 20, // Add right alignment to center content properly
            bottom: 20, // Add bottom alignment for ListView to avoid clipping
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button

                const SizedBox(height: 20), // Spacing below the back button
                // ListView displaying cards
                Expanded(
                  child: Obx(
                    () {
                      // Check if projects are loaded
                      if (projectController.isFetching.value) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        );
                      }
                      if (projectController.projects.isEmpty) {
                        return const Center(
                          child: Text(
                            "No Projects Found",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: ListView.builder(
                          itemCount: projectController.projects.length,
                          itemBuilder: (BuildContext context, index) {
                            final project = projectController.projects[index];
                            return ProjectCard(
                                projIndex: index,
                                project: project,
                                projectController: projectController);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final ProjectController projectController;
  final int projIndex;
  final Project project;
  const ProjectCard(
      {super.key,
      required this.project,
      required this.projectController,
      required this.projIndex});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  RxBool isHovered = false.obs;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.02)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered.value = true;
            _controller.forward();
          });
        },
        onExit: (_) {
          setState(() {
            isHovered.value = false;
            _controller.reverse();
          });
        },
        child: AnimatedBuilder(
            animation: _scaleAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: isHovered.value ? _scaleAnimation.value : 1.0,
                child: GestureDetector(
                  onTap: () async {
                    EasyLoading.show(
                        status: 'Loading...'); // Show the loading spinner

                    // Introduce a delay to ensure spinner stays visible while navigation happens
                    await Future.delayed(const Duration(milliseconds: 100));

                    // Navigate to the new screen
                    await Get.to(() => ProjectDetailScreen(
                          projIndex: widget.projIndex,
                        ));

                   
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.2),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16, right: 32, left: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 20,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.folder_outlined,color: Colors.white,size: 50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.project.projectName , // Project name
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "Style: ${widget.project.projectStyle}", // Project style
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () async {
                              await widget.projectController.deleteProject(
                                  int.parse(Get.find<UserController>()
                                      .user
                                      .value!
                                      .id),
                                  widget.project.projectId,
                                  context);
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: const Color.fromARGB(255, 22, 56, 83)
                                  .withOpacity(0.2),
                              elevation: 10,
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
