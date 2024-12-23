import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class ImagesliderPage extends StatelessWidget {
  const ImagesliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ImageSliderExample extends StatefulWidget {
  const ImageSliderExample({Key? key}) : super(key: key);

  @override
  State<ImageSliderExample> createState() => _ImageSliderExampleState();
}

class _ImageSliderExampleState extends State<ImageSliderExample> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/example.png',
    'assets/example2.png',
    'assets/example3.png',
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Add listener to detect changes in the page
    _controller.addListener(() {
      if (_controller.page != null) {
        setState(() {
          _currentPage = _controller.page!.round();
        });
      }
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Container(
        height: 250, // Set height for the image slider
        decoration: BoxDecoration(
          borderRadius: ModernStyles.borderRadius,
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: ModernStyles.borderRadius,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ),
            // Left Button
            Positioned(
              top: 100,
              left: 10,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_left,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  if (_currentPage > 0) {
                    _navigateToPage(_currentPage - 1);
                  }
                },
              ),
            ),
            // Right Button
            Positioned(
              top: 100,
              right: 10,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  if (_currentPage < images.length - 1) {
                    _navigateToPage(_currentPage + 1);
                  }
                },
              ),
            ),
            // Pagination Indicator
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? ModernStyles.activeColor
                          : ModernStyles.baseColor,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}