import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconsax/iconsax.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.profile_2user),
          label: 'Friends',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Iconsax.notification,
          ),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.user),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.setting),
          label: 'Setting',
        )
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Colors.purple[400],
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.black,
    );
  }
}
