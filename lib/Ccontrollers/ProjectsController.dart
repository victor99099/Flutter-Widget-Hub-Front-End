import 'package:archive/archive_io.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterwidgethub/Models/Constants/AppConstant.dart';
import 'package:flutterwidgethub/Models/Entities/Widgets.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/Entities/Projects.dart';
import 'UserDataController.dart';
import 'dart:html' as html;
// import 'models.dart'; // Import your models

class ProjectController extends GetxController {
  var projects = <Project>[].obs; // Observable list to hold projects
  RxBool isFetching = true.obs;
  var projectWidgetMap =
      <int, List<int>>{}.obs; // Map to store projectId and widgetNumbers

  // Function to populate projectWidgetMap from all projects
  void populateProjectWidgetMap() {
    projectWidgetMap.clear();
    for (var project in projects) {
      projectWidgetMap[project.projectId] =
          project.widgets.map((widget) => widget.widgetNumber).toList();
    }
  }

  // Function to check if a widgetNumber exists for a specific projectId
  bool isWidgetNumberPresent(int projectId, int widgetNumber) {
    return projectWidgetMap[projectId]?.contains(widgetNumber) ?? false;
  }

  @override
  void onInit() {
    super.onInit();
    // Fetch projects when the controller is initialized
    fetchProjects(
      int.parse(Get.find<UserController>().user.value!.id),
    ); // Replace with the actual user ID
  }

  // Fetch all projects for a specific user
  Future<void> fetchProjects(int userId) async {
    EasyLoading.show();
    projects.value = [];
    final url = Uri.parse(
        'http://${Appconstant.Domain}/projectwidgets/$userId/projects'); // Replace with actual URL

    try {
      // EasyLoading.show();
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<dynamic> responseData = json.decode(response.body);
        // Map the response data to Project models
        projects.value = responseData
            .map((data) => Project.fromMap(data as Map<String, dynamic>))
            .toList();
        populateProjectWidgetMap();
        EasyLoading.dismiss();
        isFetching.value = false;
      } else {
        EasyLoading.dismiss();
        isFetching.value = false;
        throw Exception('Failed to load projects');
      }
    } catch (error) {
      EasyLoading.dismiss();
      isFetching.value = false;
      print('Error fetching projects: $error');
      // Handle the error (e.g., show a message to the user)
    }
  }

  Future<void> addProject(
      int userId, String name, String style, BuildContext context) async {
    try {
      // API endpoint
      EasyLoading.show();
      final url = Uri.parse('http://${Appconstant.Domain}/projects');
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'user_id': userId,
          'name': name,
          'style': style,
        }),
      );

      if (response.statusCode == 201) {
        fetchProjects(userId);
        EasyLoading.dismiss();
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("Project Created Successfully"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
      } else {
        // Handle error response
        final error = json.decode(response.body)['error'];
        EasyLoading.dismiss();
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('$error'),
          onDismiss: () {},
        ).show(context);
      }
    } catch (e) {
      EasyLoading.dismiss();
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
    } finally {}
  }

  Future<void> updateProject(int projId, int userId, String name, String style,
      BuildContext context) async {
    try {
      // API endpoint
      EasyLoading.show();
      final url = Uri.parse('http://${Appconstant.Domain}/projects/$projId');
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'user_id': userId,
          'name': name,
          'style': style,
        }),
      );

      if (response.statusCode == 200) {
        fetchProjects(userId);
        EasyLoading.dismiss();
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("Project Updated Successfully"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
      } else {
        // Handle error response
        final error = json.decode(response.body)['error'];
        EasyLoading.dismiss();
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('$error'),
          onDismiss: () {},
        ).show(context);
        print(error);
      }
    } catch (e) {
      EasyLoading.dismiss();
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
      print(e);
    } finally {}
  }

  Future<void> deleteProject(
      int userId, int projectId, BuildContext context) async {
    try {
      // API endpoint
      EasyLoading.show();
      final url = Uri.parse('http://${Appconstant.Domain}/projects/$projectId');
      final response = await http.delete(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        fetchProjects(userId);
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("Project Deleted Successfully"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
      } else {
        // Handle error response
        final error = json.decode(response.body)['error'];
        EasyLoading.dismiss();
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('$error'),
          onDismiss: () {},
        ).show(context);
        print(error);
      }
    } catch (e) {
      EasyLoading.dismiss();
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
    } finally {}
  }

  Future<void> addWidget(
      int projId, String name, int number, BuildContext context) async {
    try {
      // API endpoint
      EasyLoading.show();
      if (isWidgetNumberPresent(projId, number)) {
        EasyLoading.dismiss();
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: const Text('Widget already exist in this project'),
          onDismiss: () {},
        ).show(context);
        return;
      }
      final url = Uri.parse('http://${Appconstant.Domain}/widgets');
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'project_id': projId,
          'name': name,
          'code': number,
          'widgetNumber': number
        }),
      );

      if (response.statusCode == 201) {
        fetchProjects(int.parse(Get.find<UserController>().user.value!.id));
        EasyLoading.dismiss();
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("Widget Added Successfully"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
        Navigator.pop(context);
      } else {
        // Handle error response
        final error = json.decode(response.body)['error'];
        EasyLoading.dismiss();
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('$error'),
          onDismiss: () {},
        ).show(context);
      }
    } catch (e) {
      EasyLoading.dismiss();
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
    } finally {}
  }

  Future<void> deleteWidget(int widgetId, BuildContext context) async {
    try {
      // API endpoint
      EasyLoading.show();

      final url = Uri.parse('http://${Appconstant.Domain}/widgets/$widgetId');
      final response = await http.delete(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        fetchProjects(int.parse(Get.find<UserController>().user.value!.id));
        EasyLoading.dismiss();
        ElegantNotification.success(
          title: const Text("Success"),
          description: const Text("Widget Removed Successfully"),
          onDismiss: () {
            print('Message when the notification is dismissed');
          },
          onNotificationPressed: () {
            print('Message when the notification is pressed');
          },
          isDismissable: true,
        ).show(context);
        // Navigator.pop(context);
      } else {
        // Handle error response
        final error = json.decode(response.body)['error'];
        EasyLoading.dismiss();
        ElegantNotification.error(
          width: 360,
          position: Alignment.topRight,
          title: const Text('Error'),
          description: Text('$error'),
          onDismiss: () {},
        ).show(context);
      }
    } catch (e) {
      EasyLoading.dismiss();
      ElegantNotification.error(
        width: 360,
        position: Alignment.topRight,
        title: const Text('Error'),
        description: Text('$e'),
        onDismiss: () {},
      ).show(context);
    } finally {}
  }

  Future<void> downloadWidgetCodesByIndex(
      int projectIndex, String styleCode) async {
    try {
      // Retrieve the project directly using the index
      if (projectIndex < 0 || projectIndex >= projects.length) {
        throw Exception('Invalid project index: $projectIndex');
      }
      final project = projects[projectIndex];

      // Create a ZIP archive
      final archive = Archive();

      for (var widget in project.widgets) {
        final widgetCode =
            "import 'package:flutter/material.dart'; \nimport 'Style.dart'; \n\n${widgetsCodeNumber[widget.widgetCode - 1]}";
        // final widgetCode =
        //     widget.widgetCode.toString(); // Assuming widgetCode is the code
        final widgetFileName =
            '${widget.widgetName}_${widget.widgetNumber}.dart';

        // Add each widget's code as a file in the archive
        archive.addFile(
          ArchiveFile(
              widgetFileName, widgetCode.length, utf8.encode(widgetCode)),
        );
      }

      // Add style code as a separate file
      final styleCodeFile = "import 'package:flutter/material.dart'; \nimport 'package:google_fonts/google_fonts.dart'; \n\n${styleCode}";
      final styleFileName = 'Style.dart';
      archive.addFile(
        ArchiveFile(
            styleFileName, styleCodeFile.length, utf8.encode(styleCodeFile)),
      );

      // Encode the archive as a ZIP file
      final zipBytes = ZipEncoder().encode(archive);
      final zipBase64 = base64Encode(zipBytes!);

      // Create a downloadable link
      final zipFileName = '${project.projectName}_widget_codes.zip';
      final anchor = html.AnchorElement(
        href: 'data:application/zip;base64,$zipBase64',
      )
        ..target = 'blank'
        ..download = zipFileName;

      // Trigger the download
      anchor.click();
      anchor.remove();

      print(
          'Widget codes for project "${project.projectName}" downloaded as $zipFileName.');
    } catch (error) {
      print(
          'Error downloading widget codes for project at index $projectIndex: $error');
    }
  }
}
