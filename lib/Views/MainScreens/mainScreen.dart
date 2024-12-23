import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Models/MainWidgets/all.dart';
import 'package:flutterwidgethub/Views/MainScreens/MainScreenWidgets/leftmain.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 28, 46),
      // appBar: AppBar(title: Text("Flutter Widget Hub"),),
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
                color: Colors.black.withOpacity(0.25), // Transparent overlay
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [Text("Flutter Widget Hub",style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold),)],
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Divider(
                   color: Colors.white,
                        indent: 10,
                        endIndent: 10,
                        thickness: 2,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: LeftMain().paddingOnly(left: 10),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: VerticalDivider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        thickness: 2,
                      ),
                    ),
                    Flexible(
                      child: Container(
                          // color: Colors.green,
                          // child: const Center(child: Text('Column 2')),
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
