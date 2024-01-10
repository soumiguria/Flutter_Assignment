import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: 380,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF192126),
          borderRadius: BorderRadius.all(Radius.circular(60.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            bool isSelected = index == selectedIndex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _getIconForIndex(index),
                    color: isSelected ? Color(0xFFBBF246) : Colors.white,
                  ),
                  SizedBox(height: isSelected ? 5 : 0),
                  if (isSelected)
                    Text(
                      _getLabelForIndex(index),
                      style: TextStyle(
                        color: Color(0xFFBBF246),
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.explore;
      case 2:
        return Icons.bar_chart;
      case 3:
        return Icons.person;
      default:
        return Icons.home;
    }
  }

  String _getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Explore';
      case 2:
        return 'Statistics';
      case 3:
        return 'Profile';
      default:
        return '';
    }
  }
}
