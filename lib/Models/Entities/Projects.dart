class WidgetModel {
  final int widgetId;
  final String widgetName;
  final int widgetCode;
  final int widgetNumber;

  WidgetModel({
    required this.widgetId,
    required this.widgetName,
    required this.widgetCode,
    required this.widgetNumber,
  });

  factory WidgetModel.fromMap(Map<String, dynamic> map) {
    return WidgetModel(
      widgetId: map['widgetId'],
      widgetName: map['widgetName'],
      widgetCode: map['widgetCode'],
      widgetNumber: map['widgetNumber'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'widgetId': widgetId,
      'widgetName': widgetName,
      'widgetCode': widgetCode,
      'widgetNumber': widgetNumber,
    };
  }
}

class Project {
  final int projectId;
  final String projectName;
  final String projectStyle;
  final List<WidgetModel> widgets;

  Project({
    required this.projectId,
    required this.projectName,
    required this.projectStyle,
    required this.widgets,
  });

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      projectId: map['projectId'],
      projectName: map['projectName'],
      projectStyle: map['projectStyle'],
      widgets: List<WidgetModel>.from(
        map['widgets']?.map((widget) => WidgetModel.fromMap(widget)) ?? [],
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'projectId': projectId,
      'projectName': projectName,
      'projectStyle': projectStyle,
      'widgets': widgets.map((widget) => widget.toMap()).toList(),
    };
  }
}
