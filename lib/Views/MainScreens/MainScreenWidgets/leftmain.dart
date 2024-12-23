import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Models/MainWidgets/WidgetTilesData.dart';

class LeftMain extends StatelessWidget {
  const LeftMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widgetTitles.length,
      itemBuilder: (BuildContext context, index) {
        return Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 20, 43).withOpacity(0.5),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: const Color.fromARGB(255, 168, 207, 233))
          ),
          
          height: MediaQuery.of(context).size.width * 0.05,
          child: Row(
            children: [
              Icon(Icons.pin_drop),
              Text(widgetTitles[index],style: TextStyle(color: const Color.fromARGB(255, 224, 224, 224)),),
            ],
          ),
        );
      });
  }
}
