import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../features/features.dart';

class EntryPointWidget extends StatefulWidget {
  const EntryPointWidget({super.key});

  @override
  State<EntryPointWidget> createState() => _EntryPointWidgetState();
}

class _EntryPointWidgetState extends State<EntryPointWidget> {
  int _bottomNavIndex = 0;
  final List<Widget> _screens = const [
    UserStatsScreen(),
    FortniteMapScreen(),
    FortniteShopScreen(),
  ];
  final List<IconData> _icons = [Icons.home, Icons.map, Icons.shop];

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      key: const Key('entry_point_widget'),
      body: _screens[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: _screens.length,
        activeIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() => _bottomNavIndex = index);
        },
        tabBuilder: (index, isActive) {
          final selectedColor =
              isActive ? theme.primaryColorLight : theme.iconTheme.color;

          return Icon(
            _icons[index],
            color: selectedColor,
          );
        },
        backgroundColor: theme.primaryColorDark,
        gapWidth: 0,
      ),
    );
  }
}
