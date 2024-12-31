import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Models/MainWidgets/WidgetTilesData.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Ccontrollers/PageController.dart';

class LeftMain extends StatefulWidget {
  const LeftMain({super.key});

  @override
  State<LeftMain> createState() => _LeftMainState();
}

class _LeftMainState extends State<LeftMain> {
  final TextEditingController search = TextEditingController();
  var allWidgets = <String>[].obs;
  var filteredWidgets = <String>[].obs;

  @override
  void initState() {
    super.initState();
    allWidgets.value = widgetTitles;
    filteredWidgets.value = allWidgets;
  }

  void filterWidgets(String query) {
    filteredWidgets.value = allWidgets
        .where((widget) => widget.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    CustomPageController pageController = Get.put(CustomPageController());
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextFormField(
          onChanged: (query) => filterWidgets(query),
          style: TextStyle(color: Colors.white, fontSize: 20),
          controller: search,
          decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white, fontSize: 20),
              hintText: "Search Widget",
              hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 214, 214, 214),
                  fontSize: 18),
              prefixIcon: Icon(
                Iconsax.search_normal,
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 168, 207, 233),
                      width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 168, 207, 233),
                      width: 3)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 168, 207, 233)))),
        ),
        Expanded(
          child: Obx(
            () => ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
                itemCount: filteredWidgets.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      pageController.SelectedPage.value = index;
                    },
                    child: HoverableRow(
                      index: index,
                      title: filteredWidgets[index],
                      icon:
                          widgetIcons[filteredWidgets[index]] ?? Icons.widgets,
                      iconColor: widgetIconColors[filteredWidgets[index]] ??
                          Colors.black,
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class HoverableRow extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final int index;

  const HoverableRow({
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.index,
    super.key,
  });

  @override
  _HoverableRowState createState() => _HoverableRowState();
}

class _HoverableRowState extends State<HoverableRow>
    with SingleTickerProviderStateMixin {
  CustomPageController pageController = Get.put(CustomPageController());
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
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
          _isHovered = true;
          _controller.forward();
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
          _controller.reverse();
        });
      },
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _isHovered ? _scaleAnimation.value : 1.0,
            child: Obx(
              () => Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 56, 99).withOpacity(0.5),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      color: const Color.fromARGB(255, 168, 207, 233),
                      width: pageController.SelectedPage.value == widget.index
                          ? 3
                          : 1),
                ),
                height: MediaQuery.of(context).size.width * 0.05,
                child: Row(
                  children: [
                    Icon(
                      widget.icon,
                      color: widget.iconColor,
                    ).paddingOnly(left: 10),
                    const SizedBox(width: 15),
                    Text(
                      widget.title,
                      softWrap: true,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: pageController.SelectedPage.value == widget.index
                            ? Colors.white
                            : _isHovered
                                ? Colors.white
                                : const Color.fromARGB(255, 201, 201, 201),
                        fontWeight:
                            pageController.SelectedPage.value == widget.index
                                ? FontWeight.bold
                                : _isHovered
                                    ? FontWeight.bold
                                    : null,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
