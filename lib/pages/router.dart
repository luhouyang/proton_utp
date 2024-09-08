import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proton_utp/pages/car_history_page.dart';
import 'package:proton_utp/pages/home_page.dart';
import 'package:proton_utp/pages/navigation_page.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int activeIndex = 0;

  Widget getPage() {
    if (activeIndex == 0) {
      return const NavigationPage();
    }
    else if (activeIndex == 1) {
      return const HomePage();
    } else if (activeIndex == 2) {
      return const CarHistoryPage();
    }
    return const HomePage();
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: getPage(),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.green[50],
          inactiveColor: Colors.grey,
          activeColor: Colors.green,
          notchSmoothness: NotchSmoothness.softEdge,
          icons: const [Icons.map, Icons.home, Icons.car_rental],
          splashRadius: 35,
          activeIndex: activeIndex,
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          }),
    );
  }
}