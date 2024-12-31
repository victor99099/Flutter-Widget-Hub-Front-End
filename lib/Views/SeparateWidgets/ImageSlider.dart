import 'dart:async';

import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/CommonWidgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';

class ImagesliderPage extends StatelessWidget {
  const ImagesliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 15, right: 30),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Image Slider",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "An image slider widget in Flutter enables smooth navigation between a collection of images using swipe gestures or automated transitions. It is often implemented with a PageView or a third-party package like carousel_slider for additional customization.",
              style: TextStyle(
                color: Color(0xFFF0F0F0),
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "1 - Built-in widget",
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            TypeBoxNoBody(
                Heading: "With Left Right Buttons",
                code: '''
class ButtonImageSlider extends StatefulWidget {
  const ButtonImageSlider({super.key});

  @override
  State<ButtonImageSlider> createState() =>
      _ButtonImageSliderState();
}

class _ButtonImageSliderState extends State<ButtonImageSlider> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/eample.jpg',
    'assets/example2.jpg',
    'assets/example3.jpg',
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        width: 500,
        height: 250, // Set height for the image slider
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
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
                icon: const Icon(
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
                icon: const Icon(
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
                          ? Colors.blue
                          : Colors.grey,
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
}''',
                widget: ButtonImageSliderExample()),
            const SizedBox(
              height: 20,
            ),
            TypeBoxNoBody(
                Heading: "Automatic",
                code: '''
class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/eample.jpg',
    'assets/example2.jpg',
    'assets/example3.jpg',
  ];
  int _currentPage = 0;
  late Timer _timer;

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

    // Start a timer to automatically change the page every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), _autoChangePage);
  }

  @override
  void dispose() {
    // Dispose the controller and cancel the timer when the widget is disposed
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Method to automatically change the page
  void _autoChangePage(Timer timer) {
    if (_currentPage < images.length - 1) {
      _navigateToPage(_currentPage + 1);
    } else {
      _navigateToPage(0); // Loop back to the first image
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        width: 500,
        height: 250, // Set height for the image slider
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
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
                          ? Colors.blue
                          : Colors.grey,
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
}''',
                widget: AutoImageSliderExample()),
            const SizedBox(
              height: 40,
            ),
            Text(
              "2 - External Packages",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "◆  Using fan_carousel_image_slider",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            TypeBoxNoBody(
                Heading: "1 - Type 1",
                code: '''
class FanImageSliderButtons extends StatelessWidget {
  const FanImageSliderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 350,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: FanCarouselImageSlider.sliderType1(
          imagesLink: [
            'assets/eample.jpg',
            'assets/example2.jpg',
            'assets/example3.jpg',
          ],
          isAssets: true,
          autoPlay: true,
          sliderHeight: 250,
          showIndicator: true,
        ),
      ),
    );
  }
}
''',
                widget: const FanImageSliderButtons()),
            TypeBoxNoBody(
                Heading: "2 - Type 2",
                code: '''
class FanImageSliderSwipe extends StatelessWidget {
  const FanImageSliderSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 310,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: FanCarouselImageSlider.sliderType2(
          imagesLink: [
            'assets/eample.jpg',
            'assets/example2.jpg',
            'assets/example3.jpg',
          ],
          isAssets: true,
          autoPlay: true,
          sliderHeight: 250,
          currentItemShadow: const [],
          sliderDuration: const Duration(milliseconds: 200),
          imageRadius: 0,
          slideViewportFraction: 1.2,
        ),
      ),
    );
  }
}
''',
                widget: const FanImageSliderSwipe()),
            const SizedBox(
              height: 10,
            ),
            const TerminalRun(package: "fan_carousel_image_slider"),
            const SizedBox(
              height: 10,
            ),
            const ImportCopyContainer(
              code:
                  "import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';",
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonImageSliderExample extends StatefulWidget {
  const ButtonImageSliderExample({super.key});

  @override
  State<ButtonImageSliderExample> createState() =>
      _ButtonImageSliderExampleState();
}

class _ButtonImageSliderExampleState extends State<ButtonImageSliderExample> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/eample.jpg',
    'assets/example2.jpg',
    'assets/example3.jpg',
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
      shape: const RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Container(
        width: 500,
        height: 250, // Set height for the image slider
        decoration: const BoxDecoration(
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
                icon: const Icon(
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
                icon: const Icon(
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

class AutoImageSliderExample extends StatefulWidget {
  const AutoImageSliderExample({super.key});

  @override
  State<AutoImageSliderExample> createState() => _AutoImageSliderExampleState();
}

class _AutoImageSliderExampleState extends State<AutoImageSliderExample> {
  final PageController _controller = PageController();
  final List<String> images = [
    'assets/eample.jpg',
    'assets/example2.jpg',
    'assets/example3.jpg',
  ];
  int _currentPage = 0;
  late Timer _timer;

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

    // Start a timer to automatically change the page every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), _autoChangePage);
  }

  @override
  void dispose() {
    // Dispose the controller and cancel the timer when the widget is disposed
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _navigateToPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Method to automatically change the page
  void _autoChangePage(Timer timer) {
    if (_currentPage < images.length - 1) {
      _navigateToPage(_currentPage + 1);
    } else {
      _navigateToPage(0); // Loop back to the first image
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
        borderRadius: ModernStyles.borderRadius,
      ),
      child: Container(
        width: 500,
        height: 250, // Set height for the image slider
        decoration: const BoxDecoration(
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

class FanImageSliderButtons extends StatelessWidget {
  const FanImageSliderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 350,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: FanCarouselImageSlider.sliderType1(
          imagesLink: [
            'assets/eample.jpg',
            'assets/example2.jpg',
            'assets/example3.jpg',
          ],
          isAssets: true,
          autoPlay: true,
          sliderHeight: 250,
          showIndicator: true,
        ),
      ),
    );
  }
}

class FanImageSliderSwipe extends StatelessWidget {
  const FanImageSliderSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 310,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: FanCarouselImageSlider.sliderType2(
          imagesLink: [
            'assets/eample.jpg',
            'assets/example2.jpg',
            'assets/example3.jpg',
          ],
          isAssets: true,
          autoPlay: true,
          sliderHeight: 250,
          currentItemShadow: const [],
          sliderDuration: const Duration(milliseconds: 200),
          imageRadius: 0,
          slideViewportFraction: 1.2,
        ),
      ),
    );
  }
}
