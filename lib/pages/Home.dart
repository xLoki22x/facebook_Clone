import 'dart:html';
import 'dart:ui';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_facebook/components/Navber.dart';
import 'package:flutter_facebook/pages/dashbord.dart';
import 'package:flutter_facebook/pages/friends.dart';
import 'package:flutter_facebook/pages/notification.dart';
import 'package:flutter_facebook/pages/proflie.dart';
import 'package:flutter_facebook/pages/setting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List screens = [
    Screenhome(),
    Screencher(),
    ScreenNotifications(),
    Screenprofile(),
    Screensetting()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black.withOpacity(0.6),
        body: Container(
          child: screens.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomMenu(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ));
  }
}

class Screenhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dashbord();
  }
}

class Screencher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return friends();
  }
}

class ScreenNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return notifications();
  }
}

class Screenprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return profile();
  }
}

class Screensetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return setting();
  }
}
