// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum BottomBarEnum { Process }

class CustomButtomBar extends StatefulWidget {
  Function(BottomBarEnum)? onChanged;

  CustomButtomBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomButtomBar> createState() => _CustomButtomBarState();
}

class _CustomButtomBarState extends State<CustomButtomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: const Icon(Icons.abc),
        activeIcon: const Icon(Icons.abc),
        type: BottomBarEnum.Process,
        title: 'lbl_proxess'),
    BottomMenuModel(
        icon: const Icon(Icons.abc),
        activeIcon: const Icon(Icons.abc),
        type: BottomBarEnum.Process,
        title: 'lbl_proxess'),
    BottomMenuModel(
        icon: const Icon(Icons.abc),
        activeIcon: const Icon(Icons.abc),
        type: BottomBarEnum.Process,
        title: 'lbl_proxess'),
    BottomMenuModel(
        icon: const Icon(Icons.abc),
        activeIcon: const Icon(Icons.abc),
        type: BottomBarEnum.Process,
        title: 'lbl_proxess'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: const BoxDecoration(
        color: Color(0x00ffffff),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: const Icon(Icons.abc),
            activeIcon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class BottomMenuModel {
  Icon icon;
  Icon activeIcon;
  String? title;
  BottomBarEnum type;
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });
}

class DefaultWiget extends StatelessWidget {
  const DefaultWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0Xffffff),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "please replace the respective widget hert",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
