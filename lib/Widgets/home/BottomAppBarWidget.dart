import 'package:flutter/material.dart';

BottomAppBar bottomAppBarWidget(currentIndex, onTapped, context) {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    clipBehavior: Clip.antiAlias,
    notchMargin: 5,
    child: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Routine',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              size: 0,
            ),
            label: '',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ]),
  );
}
