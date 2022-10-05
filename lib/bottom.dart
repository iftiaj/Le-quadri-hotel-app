import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.bedtime),
          label: 'Hotel',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.smart_toy_rounded),
          label: 'Food',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        )
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Colors.red[800],
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
    );
  }
}
