import 'package:flutter/material.dart';
import 'package:gridup_client/ui/widgets/navbar/clipped_view.dart';
import 'package:gridup_client/ui/widgets/navbar/navbar_button.dart';

class NavBar extends StatelessWidget {
  final ValueChanged<int> itemTapped;
  final int currentIndex;
  final List<NavBarItemData> items;

  const NavBar({this.items, this.itemTapped, this.currentIndex = 0});

  NavBarItemData get selectedItem => currentIndex >= 0 && currentIndex < items.length ? items[currentIndex] : null;

  @override
  Widget build(BuildContext context) {
    final buttonWidgets = items.map((data) {
      return NavbarButton(data, data == selectedItem, onTap: () {
        final index = items.indexOf(data);
        itemTapped(index);
      });
    }).toList();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 16, color: Colors.black12),
          BoxShadow(blurRadius: 24, color: Colors.black12),
        ],
      ),
      alignment: Alignment.center,
      height: 80,
      child: ClippedView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: buttonWidgets,
        ),
      ),
    );
  }
}

class NavBarItemData {
  const NavBarItemData(this.title, this.icon, this.width, this.selectedColor);

  final String title;
  final IconData icon;
  final Color selectedColor;
  final double width;
}
