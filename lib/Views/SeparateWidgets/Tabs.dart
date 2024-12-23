import 'package:flutter/material.dart';

import '../../Styles/styles.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TabsExample extends StatelessWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: ModernStyles.borderRadius,
            child: TabBar(
              tabs: const [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
              ],
              indicator: BoxDecoration(
                borderRadius: ModernStyles.borderRadius,
                color: ModernStyles.activeColor,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: ModernStyles.baseColor,
            ),
          ),
          Container(
            height: 100,
            child: const TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}