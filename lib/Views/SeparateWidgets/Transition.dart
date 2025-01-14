import 'package:flutter/material.dart';
import 'package:flutterwidgethub/Views/MainScreens/CommonWidgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/styles.dart';

class TransitionPage extends StatelessWidget {
  const TransitionPage({super.key});

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
              "Page Transitions",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "In Flutter, page transitions are animations between screens. Default transitions match the platform, but custom ones can be made using PageRouteBuilder or packages like animations.",
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
            const SingleCodeAndPreview(code: '''
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => Scaffold(
      appBar: AppBar(title: const Text('New Page')),
      body: const Center(child: Text('New Page Content')),
    ), // Replace Scaffold With Desired Page
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(
          opacity: animation,
          child: child); //Replace with any other type of transition
    },
  ),
);
''', widget: FadeTransitionExample()),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Types of Transitions",
              style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 20,
            ),
            const TypeBoxWithSave(
                name: "Fade Transition",
                number: 6,
                Heading: "1 - Fade Transition",
                body:
                    "The one showed above, where the new page fades in and out.",
                code: '''
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => Scaffold(
      appBar: AppBar(title: const Text('New Page')),
      body: const Center(child: Text('New Page Content')),
    ), // Replace Scaffold With Desired Page
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(
          opacity: animation,
          child: child); //Replace with any other type of transition
    },
  ),
);
''',
                widget: FadeTransitionExample()),
            const TypeBoxWithSave(
                name: "Slide Transition",
                number: 7,
                Heading: "2 - Slide Transition",
                body:
                    "The new page slides in from a specified direction (e.g., from the left, right, top, or bottom).",
                code: '''
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => Scaffold(
      appBar: AppBar(title: const Text('New Page')),
      body: const Center(child: Text('New Page Content')),
    ), // Replace Scaffold With Desired Page
    transitionsBuilder: (_, animation, __, child) {
      return SlideTransition(
          position: animation.drive(
              Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
                  .chain(CurveTween(curve: Curves.ease))),
          child: child);
      //Replace with any other type of transition
    },
  ),
)
''',
                widget: SlideTransitionExample()),
            const TypeBoxWithSave(
                name: "Rotation Transition",
                number: 8,
                Heading: "3 - Rotation Transition",
                body: "The new page rotates as it appears.",
                code: '''
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => Scaffold(
      appBar: AppBar(title: const Text('New Page')),
      body: const Center(child: Text('New Page Content')),
    ), // Replace Scaffold With Desired Page
    transitionsBuilder: (_, animation, __, child) {
      return RotationTransition(turns: animation, child: child);
      //Replace with any other type of transition
    },
  ),
);
''',
                widget: RotationTransitionExample()),
            const TypeBoxWithSave(
                name: "Scale Transition",
                number: 9,
                Heading: "4 - Scale Transition",
                body:
                    "The new page scales in from a point, often used to zoom in the content.",
                code: '''
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => Scaffold(
      appBar: AppBar(title: const Text('New Page')),
      body: const Center(child: Text('New Page Content')),
    ), // Replace Scaffold With Desired Page
    transitionsBuilder: (_, animation, __, child) {
      return ScaleTransition(scale: animation, child: child);
      //Replace with any other type of transition
    },
  ),
);
''',
                widget: ScaleTransitionExample()),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class FadeTransitionExample extends StatelessWidget {
  const FadeTransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(
                  opacity: animation,
                  child: child); //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class SlideTransitionExample extends StatelessWidget {
  const SlideTransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                  position: animation.drive(
                      Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                          .chain(CurveTween(curve: Curves.ease))),
                  child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class ScaleTransitionExample extends StatelessWidget {
  const ScaleTransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return ScaleTransition(scale: animation, child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class RotationTransitionExample extends StatelessWidget {
  const RotationTransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return RotationTransition(turns: animation, child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class FadeTransitionExample2 extends StatelessWidget {
  final ButtonStyle buttonStyle;
  const FadeTransitionExample2({super.key, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(
                  opacity: animation,
                  child: child); //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class SlideTransitionExample2 extends StatelessWidget {
  final ButtonStyle buttonStyle;
  const SlideTransitionExample2({super.key, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                  position: animation.drive(
                      Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                          .chain(CurveTween(curve: Curves.ease))),
                  child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class ScaleTransitionExample2 extends StatelessWidget {
  final ButtonStyle buttonStyle;
  const ScaleTransitionExample2({super.key, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return ScaleTransition(scale: animation, child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}

class RotationTransitionExample2 extends StatelessWidget {
  final ButtonStyle buttonStyle;
  const RotationTransitionExample2({super.key, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              appBar: AppBar(title: const Text('New Page')),
              body: const Center(child: Text('New Page Content')),
            ), // Replace Scaffold With Desired Page
            transitionsBuilder: (_, animation, __, child) {
              return RotationTransition(turns: animation, child: child);
              //Replace with any other type of transition
            },
          ),
        );
      },
      child: const Text('Transition to New Page'),
    );
  }
}
