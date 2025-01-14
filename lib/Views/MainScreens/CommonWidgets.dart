import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterwidgethub/Ccontrollers/UserDataController.dart';

import 'package:flutterwidgethub/Views/ProjectScreens/AddWidgetToProject.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeBox extends StatelessWidget {
  final String Heading;
  final String body;
  final String code;
  final Widget widget;
  const TypeBox(
      {super.key,
      required this.Heading,
      required this.body,
      required this.code,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          Heading,
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          body,
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleCodeAndPreview(code: code, widget: widget),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class TypeBoxWithSave extends StatelessWidget {
  final String name;
  final int number;
  final String Heading;
  final String body;
  final String code;
  final Widget widget;
  const TypeBoxWithSave(
      {super.key,
      required this.Heading,
      required this.body,
      required this.code,
      required this.name,
      required this.number,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          Heading,
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          body,
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleCodeAndPreviewWithSave(
          code: code,
          widget: widget,
          name: name,
          number: number,
        ),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class TypeBoxNoBody extends StatelessWidget {
  final String Heading;
  final String code;
  final Widget widget;
  const TypeBoxNoBody(
      {super.key,
      required this.Heading,
      required this.code,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          Heading,
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleCodeAndPreview(code: code, widget: widget),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class TypeBoxNoBodyWithSave extends StatelessWidget {
  final String name;
  final int number;
  final String Heading;
  final String code;
  final Widget widget;
  const TypeBoxNoBodyWithSave(
      {super.key,
      required this.Heading,
      required this.code,
      required this.name,
      required this.number,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          Heading,
          style: const TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleCodeAndPreviewWithSave(code: code, widget: widget, name: name,number: number,),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class CodeDisplay extends StatelessWidget {
  final String code;

  const CodeDisplay({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.58,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Copy button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.copy),
                color: Colors.white,
                onPressed: () {
                  // Use Clipboard to copy code
                  Clipboard.setData(ClipboardData(text: code)).then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Code copied to clipboard!')),
                    );
                  });
                },
              ),
            ],
          ),
          // Scrollable code display with custom syntax highlighting
          Expanded(
            child: SingleChildScrollView(
              child: CodeViewer(
                code: code,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CodeViewer extends StatelessWidget {
  final String code;

  const CodeViewer({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    // Generate highlighted code
    final result = _highlightCode(code);

    return SizedBox(
      width: double.infinity, // Set width to infinity for responsiveness
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Render the highlighted code with custom styles
            RichText(
              text: TextSpan(
                style: const TextStyle(
                    color: Colors.black), // Default text color (black)
                children: result,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to highlight code using regular expressions
  List<TextSpan> _highlightCode(String code) {
    const double fontSize = 16.0; // Define your desired font size here
    List<TextSpan> textSpans = [];
    final regex = RegExp(
      r'(".*?"|\b(final|var|const|void|int|String|double|class|if|else|for|while|return|try|catch|break|continue|switch|case|default)\b|//.*?$|/\*.*?\*/|\d+(\.\d+)?|[+\-*/=<>!])',
      dotAll: false, // Set dotAll to false to avoid multi-line matching
      multiLine: true, // Handle multiline strings correctly
    );

    final matches = regex.allMatches(code);
    int lastMatchEnd = 0;

    for (final match in matches) {
      // Add the text before the match
      if (match.start > lastMatchEnd) {
        textSpans.add(TextSpan(
          text: code.substring(lastMatchEnd, match.start),
          style: const TextStyle(color: Colors.white, fontSize: fontSize),
        ));
      }

      final matchedText = match.group(0)!;

      if (matchedText.startsWith('"') || matchedText.startsWith("'")) {
        // String
        textSpans.add(TextSpan(
          text: matchedText,
          style: TextStyle(color: Colors.orange[300], fontSize: fontSize),
        ));
      } else if (matchedText.startsWith('//')) {
        // Single-line Comment
        textSpans.add(TextSpan(
          text: matchedText,
          style: TextStyle(color: Colors.green[400], fontSize: fontSize),
        ));
      } else if (matchedText.startsWith('/*')) {
        // Multi-line Comment
        textSpans.add(TextSpan(
          text: matchedText,
          style: TextStyle(color: Colors.green[400], fontSize: fontSize),
        ));
      } else if (_isKeyword(matchedText)) {
        // Keyword
        textSpans.add(TextSpan(
          text: matchedText,
          style: TextStyle(
            color: Colors.blue[400],
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ));
      } else if (_isNumber(matchedText)) {
        // Number
        textSpans.add(TextSpan(
          text: matchedText,
          style: TextStyle(color: Colors.purple[300], fontSize: fontSize),
        ));
      } else if (_isOperator(matchedText)) {
        // Operator
        textSpans.add(TextSpan(
          text: matchedText,
          style: TextStyle(color: Colors.grey[400], fontSize: fontSize),
        ));
      }

      lastMatchEnd = match.end;
    }

    // Add any remaining text after the last match
    if (lastMatchEnd < code.length) {
      textSpans.add(TextSpan(
        text: code.substring(lastMatchEnd),
        style: const TextStyle(color: Colors.white, fontSize: fontSize),
      ));
    }

    return textSpans;
  }

  // Helper function to check if the text is a keyword
  bool _isKeyword(String text) {
    final keywords = [
      'final',
      'var',
      'const',
      'void',
      'int',
      'String',
      'double',
      'class',
      'if',
      'else',
      'for',
      'while',
      'return',
      'try',
      'catch',
      'break',
      'continue',
      'switch',
      'case',
      'default'
    ];
    return keywords.contains(text);
  }

  // Helper function to check if the text is a number
  bool _isNumber(String text) {
    return RegExp(r'^\d+(\.\d+)?$').hasMatch(text);
  }

  // Helper function to check if the text is an operator
  bool _isOperator(String text) {
    return ['+', '-', '*', '/', '=', '<', '>', '!', '==', '!='].contains(text);
  }
}

class CopyButton extends StatelessWidget {
  final String code;
  const CopyButton({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.copy),
      color: Colors.white,
      onPressed: () {
        // Use Clipboard to copy code
        Clipboard.setData(ClipboardData(text: code)).then((_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Code copied to clipboard!')),
          );
        });
      },
    );
  }
}

class CodeAndPreview extends StatefulWidget {
  final Widget swidget;

  final String code;
  const CodeAndPreview({super.key, required this.code, required this.swidget});

  @override
  State<CodeAndPreview> createState() => _CodeAndPreviewState();
}

class _CodeAndPreviewState extends State<CodeAndPreview> {
  bool isCodeView = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 30,
          right: MediaQuery.of(context).size.width * 0.058,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                ToggleButtons(
                  isSelected: [isCodeView, !isCodeView],
                  onPressed: (index) {
                    setState(() {
                      isCodeView =
                          index == 0; // Toggle between "Code" and "Preview"
                    });
                  },
                  borderRadius: BorderRadius.circular(10),
                  borderColor: Colors.blue.withOpacity(0.2),
                  selectedColor: Colors.white,
                  color: Colors.white,
                  fillColor: Colors.blue.withOpacity(0.5),
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Text('Preview'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Text('Code'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        isCodeView
            ? Center(
                // padding: EdgeInsets.only(left: 300, right: 300, top: 140),
                child: widget.swidget,
              ).paddingOnly(left: 20, right: 20)
            : CodeDisplay(
                code: widget.code,
              ),
      ],
    );
  }
}

class CodeAndPreviewWithSave extends StatefulWidget {
  final Widget swidget;
  final int Number;
  final String code;
  final String name;
  const CodeAndPreviewWithSave(
      {super.key,
      required this.code,
      required this.name,
      required this.swidget,
      required this.Number});

  @override
  State<CodeAndPreviewWithSave> createState() => _CodeAndPreviewWithSaveState();
}

class _CodeAndPreviewWithSaveState extends State<CodeAndPreviewWithSave> {
  bool isCodeView = true;
  // RxBool isSaved = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Get.find<UserController>().isLoggedIn.value && isCodeView
              ? Positioned(
                  top: 35,
                  left: MediaQuery.of(context).size.width * 0.058,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Colors.blue.withOpacity(0.2)))),
                          elevation: const WidgetStatePropertyAll(0),
                          backgroundColor:
                              // isSaved.value
                              //     ? WidgetStatePropertyAll(
                              //         Colors.blue.withOpacity(0.5))
                              //     :
                              WidgetStatePropertyAll(
                                  Colors.blue.withOpacity(0.1))),
                      onPressed: () async {
                        // final ProjectController projectController = Get.put(ProjectController());
                        // await Get.find<ProjectController>().fetchProjects(
                        //     int.parse(
                        //         Get.find<UserController>().user.value!.id));
                        // isSaved.value
                        //     ? null
                        //     :
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: AddWidgetToProject(
                              WidgetNumber: widget.Number,
                              name: widget.name,
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        );
                        // isSaved.value = !isSaved.value;
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Row(
                          spacing: 10,
                          children: [
                            Icon(
                              size: 25,
                              // isSaved.value
                              //     ? Icons.bookmark
                              //     :
                              Icons.bookmark_add_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              // isSaved.value ? "Un-Save" :
                              "Save to project",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      )),
                )
              : const SizedBox.shrink(),
          Positioned(
            top: 30,
            right: MediaQuery.of(context).size.width * 0.058,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.withOpacity(0.1),
              ),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  ToggleButtons(
                    isSelected: [isCodeView, !isCodeView],
                    onPressed: (index) {
                      setState(() {
                        isCodeView =
                            index == 0; // Toggle between "Code" and "Preview"
                      });
                    },
                    borderRadius: BorderRadius.circular(10),
                    borderColor: Colors.blue.withOpacity(0.2),
                    selectedColor: Colors.white,
                    color: Colors.white,
                    fillColor: Colors.blue.withOpacity(0.5),
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8),
                        child: Text('Preview'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8),
                        child: Text('Code'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          isCodeView
              ? Center(
                  // padding: EdgeInsets.only(left: 300, right: 300, top: 140),
                  child: widget.swidget,
                ).paddingOnly(left: 20, right: 20)
              : CodeDisplay(
                  code: widget.code,
                ),
        ],
      ),
    );
  }
}

class StyleSection extends StatelessWidget {
  final List<Map<String, String>> options;
  const StyleSection({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showBottomBorder: true,
      border: const TableBorder(
          verticalInside: BorderSide(color: Colors.white),
          top: BorderSide(color: Colors.white)),
      columns: const [
        DataColumn(
            label: Text("Property",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16))),
        DataColumn(
            label: Text("Input Type",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16))),
        DataColumn(
            label: Text("Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16))),
      ],
      rows: options.map((option) {
        return DataRow(cells: [
          DataCell(Text(
            option["Property"]!,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )),
          DataCell(Text(option["Possible Values"]!,
              style: const TextStyle(color: Colors.white))),
          DataCell(Text(option["Description"]!,
              style: const TextStyle(color: Colors.white))),
        ]);
      }).toList(),
    );
  }
}

class SingleCodeAndPreview extends StatefulWidget {
  final String code;
  final Widget widget;
  const SingleCodeAndPreview(
      {super.key, required this.code, required this.widget});

  @override
  State<SingleCodeAndPreview> createState() => _SingleCodeAndPreviewState();
}

class _SingleCodeAndPreviewState extends State<SingleCodeAndPreview> {
  bool isCodeView = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.58,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    right: MediaQuery.of(context).size.width * 0.058,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        children: [
                          ToggleButtons(
                            isSelected: [isCodeView, !isCodeView],
                            onPressed: (index) {
                              setState(() {
                                isCodeView = index ==
                                    0; // Toggle between "Code" and "Preview"
                              });
                            },
                            borderRadius: BorderRadius.circular(10),
                            borderColor: Colors.blue.withOpacity(0.2),
                            selectedColor: Colors.white,
                            color: Colors.white,
                            fillColor: Colors.blue.withOpacity(0.5),
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8),
                                child: Text('Preview'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0, right: 8),
                                child: Text('Code'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  isCodeView
                      ? Center(
                          child: widget.widget,
                        ).paddingOnly(left: 20, right: 20)
                      : Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: CodeDisplay(
                            code: widget.code,
                          ),
                        ),
                ],
              )),
        ],
      ),
    );
  }
}

class SingleCodeAndPreviewWithSave extends StatefulWidget {
  final String code;
  final String name;
  final int number;
  final Widget widget;
  const SingleCodeAndPreviewWithSave(
      {super.key,
      required this.code,
      required this.widget,
      required this.name,
      required this.number});

  @override
  State<SingleCodeAndPreviewWithSave> createState() =>
      _SingleCodeAndPreviewWithSaveState();
}

class _SingleCodeAndPreviewWithSaveState
    extends State<SingleCodeAndPreviewWithSave> {
  bool isCodeView = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.58,
              width: MediaQuery.of(context).size.width,
              child: Obx(
                () => Stack(
                  children: [
                    Get.find<UserController>().isLoggedIn.value && isCodeView
                        ? Positioned(
                            top: 35,
                            left: MediaQuery.of(context).size.width * 0.058,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Colors.blue
                                                    .withOpacity(0.2)))),
                                    elevation: const WidgetStatePropertyAll(0),
                                    backgroundColor:
                                        // isSaved.value
                                        //     ? WidgetStatePropertyAll(
                                        //         Colors.blue.withOpacity(0.5))
                                        //     :
                                        WidgetStatePropertyAll(
                                            Colors.blue.withOpacity(0.1))),
                                onPressed: () async {
                                  // final ProjectController projectController = Get.put(ProjectController());
                                  // await Get.find<ProjectController>().fetchProjects(
                                  //     int.parse(
                                  //         Get.find<UserController>().user.value!.id));
                                  // isSaved.value
                                  //     ? null
                                  //     :
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: AddWidgetToProject(
                                        WidgetNumber: widget.number,
                                        name: widget.name,
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  );
                                  // isSaved.value = !isSaved.value;
                                },
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      top: 12, bottom: 12),
                                  child: Row(
                                    spacing: 10,
                                    children: [
                                      Icon(
                                        size: 25,
                                        // isSaved.value
                                        //     ? Icons.bookmark
                                        //     :
                                        Icons.bookmark_add_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        // isSaved.value ? "Un-Save" :
                                        "Save to project",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                )),
                          )
                        : const SizedBox.shrink(),
                    Positioned(
                      top: 30,
                      right: MediaQuery.of(context).size.width * 0.058,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.1),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            ToggleButtons(
                              isSelected: [isCodeView, !isCodeView],
                              onPressed: (index) {
                                setState(() {
                                  isCodeView = index ==
                                      0; // Toggle between "Code" and "Preview"
                                });
                              },
                              borderRadius: BorderRadius.circular(10),
                              borderColor: Colors.blue.withOpacity(0.2),
                              selectedColor: Colors.white,
                              color: Colors.white,
                              fillColor: Colors.blue.withOpacity(0.5),
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, right: 8),
                                  child: Text('Preview'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, right: 8),
                                  child: Text('Code'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    isCodeView
                        ? Center(
                            child: widget.widget,
                          ).paddingOnly(left: 20, right: 20)
                        : Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: CodeDisplay(
                              code: widget.code,
                            ),
                          ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ComparisonTable extends StatelessWidget {
  final List<String> headers;
  final List<List<String>> body;

  const ComparisonTable({
    super.key,
    required this.headers,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: const Color.fromARGB(255, 99, 185, 211)),
      columnWidths: _getColumnWidths(),
      children: [
        _buildTableHeader(),
        ..._buildTableRows(),
      ],
    );
  }

  // Define column widths based on the number of columns in the header
  Map<int, TableColumnWidth> _getColumnWidths() {
    return Map.fromIterable(
      List.generate(headers.length, (index) => index),
      value: (_) => const FlexColumnWidth(1), // Equal width for each column
    );
  }

  // Build the header row dynamically based on the provided headers
  TableRow _buildTableHeader() {
    return TableRow(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.9)),
      children: headers.map((header) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            header,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
    );
  }

  // Build the body rows dynamically based on the provided body data
  List<TableRow> _buildTableRows() {
    return body.map((rowData) {
      return TableRow(
        children: rowData.map((cellData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cellData,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          );
        }).toList(),
      );
    }).toList();
  }
}

class ImportCopyContainer extends StatelessWidget {
  final String code;
  const ImportCopyContainer({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            code,
            style: const TextStyle(color: Colors.white),
          ).paddingOnly(left: 20),
          CopyButton(
            code: code,
          ).paddingOnly(right: 20),
        ],
      ),
    );
  }
}

class TerminalRun extends StatelessWidget {
  final String package;
  const TerminalRun({super.key, required this.package});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(
                  text: "Run in terminal - ",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  children: [
                const TextSpan(
                    text: "   flutter",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 234, 49),
                        fontSize: 16,
                        fontWeight: FontWeight.w900)),
                TextSpan(
                    text: "   pub add $package",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 5, 15, 58),
                        fontSize: 16,
                        fontWeight: FontWeight.w800))
              ])).paddingOnly(left: 20),
          CopyButton(
            code: "flutter pub add $package",
          ).paddingOnly(right: 20),
        ],
      ),
    );
  }
}

double GetWidthValue(value) {
  return value / 1366;
}

double GetHeighValue(value) {
  return value / 768;
}

SnackBar toastNoti(String text) {
  return SnackBar(
    backgroundColor: const Color.fromARGB(255, 3, 31, 53),
    content: Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
    behavior: SnackBarBehavior.floating,
  );
}
