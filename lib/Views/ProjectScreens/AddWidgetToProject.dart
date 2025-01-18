import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Ccontrollers/ProjectsController.dart';
import 'package:get/get.dart';

import 'AddProjectWidget.dart';

class AddWidgetToProject extends StatelessWidget {
  final int WidgetNumber;
  final String name;
  AddWidgetToProject(
      {super.key, required this.WidgetNumber, required this.name});
  final ProjectController projectController = Get.put(ProjectController());
  final RxInt selectedProjectIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255), width: 3),
              color: const Color.fromARGB(255, 7, 41, 71),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Obx(() {
              if (projectController.projects.isEmpty) {
                return Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "No Projects Found",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: AddProjectWidget(),
                                backgroundColor: Colors.transparent,
                              ),
                            );
                          },
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(10),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(255, 2, 20, 34),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Create New Project",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                // Show the list of projects if not empty
                return Column(
                  children: [
                    const Text(
                      "Select Project",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: projectController.projects.length,
                          itemBuilder: (context, index) {
                            final project = projectController.projects[index];
                            return GestureDetector(
                                onTap: () {
                                  selectedProjectIndex.value = index;
                                },
                                child: ProjectListTile(
                                    project: project.projectName,
                                    index: index,
                                    selectedProjectIndex: selectedProjectIndex)
                                // Container(
                                //   margin:
                                //       const EdgeInsets.symmetric(vertical: 5),
                                //   decoration: BoxDecoration(
                                //     color:
                                //         const Color.fromARGB(255, 253, 253, 253)
                                //             .withOpacity(0.2),
                                //     borderRadius: BorderRadius.circular(10),
                                //     border: Border.all(
                                //       width: selectedProjectIndex.value == index
                                //           ? 5
                                //           : 1,
                                //       color: const Color.fromARGB(
                                //           255, 255, 255, 255),
                                //     ),
                                //   ),
                                //   padding: const EdgeInsets.all(8),
                                //   child: Text(
                                //     "${index + 1} - ${project.projectName}",
                                //     style: const TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 16,
                                //     ),
                                //   ),
                                // ),
                                );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: AddProjectWidget(),
                              backgroundColor: Colors.transparent,
                            ),
                          );
                        },
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(0),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_box_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Create New Project",
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          await projectController.addWidget(
                            projectController
                                .projects[selectedProjectIndex.value].projectId,
                            name,
                            WidgetNumber,
                            context,
                          );
                        },
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(10),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 2, 20, 34),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_box_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Add Widget",
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
                  ],
                );
              }
            }),
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
          ),
        ],
      ),
    );
  }
}

class ProjectListTile extends StatefulWidget {
  final String project;
  final int index;
  final RxInt selectedProjectIndex;
  const ProjectListTile(
      {super.key,
      required this.project,
      required this.index,
      required this.selectedProjectIndex});

  @override
  State<ProjectListTile> createState() => _ProjectListTileState();
}

class _ProjectListTileState extends State<ProjectListTile>
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
    return MouseRegion(
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
              child: Obx(
                () => Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253)
                        .withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: widget.selectedProjectIndex.value == widget.index
                          ? 3
                          : 1,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${widget.index + 1} - ${widget.project}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
