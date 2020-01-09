import 'dart:core';

import 'package:flutter/material.dart';
import 'package:gridup_client/ui/widgets/navbar/clipped_view.dart';
import 'package:gridup_client/ui/widgets/navbar/navbar.dart';
import 'package:gridup_client/ui/widgets/navbar/rotation_3d.dart';

class NavbarButton extends StatefulWidget {
  final NavBarItemData data;
  final bool isSelected;
  final VoidCallback onTap;

  const NavbarButton(this.data, this.isSelected, {@required this.onTap});

  @override
  _NavbarButtonState createState() => _NavbarButtonState();
}

class _NavbarButtonState extends State<NavbarButton> with SingleTickerProviderStateMixin {
  static const _animScale = 3;

  AnimationController _iconAnimController;
  bool _wasSelected;

  @override
  void initState() {
    final duration = (350 / _animScale).round();
    _iconAnimController = AnimationController(
      duration: Duration(milliseconds: duration),
      vsync: this,
    );
    Tween<double>(begin: 0, end: 1).animate(_iconAnimController).addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _startAnimIfSelectedChanged(widget.isSelected);

    final selectedColor = widget.data.selectedColor.computeLuminance() >= 0.5 ? Colors.black : Colors.white;

    final content = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Rotation3d(
          rotationY: 180 * _iconAnimController.value,
          child: Icon(
            widget.data.icon,
            size: 24,
            color: widget.isSelected ? selectedColor : const Color(0xffcccccc),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          widget.data.title,
          style: TextStyle(color: selectedColor),
        ),
      ],
    );

    return GestureDetector(
      onTap: () => widget.onTap(),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 4, left: 4),
        child: AnimatedContainer(
          alignment: Alignment.center,
          width: widget.isSelected ? widget.data.width : 56,
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.all(12),
          duration: Duration(milliseconds: (700 / _animScale).round()),
          decoration: BoxDecoration(
            color: widget.isSelected ? widget.data.selectedColor : Colors.white,
            border: !widget.isSelected || widget.data.selectedColor != Colors.white
                ? null
                : Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: ClippedView(
            child: content,
          ),
        ),
      ),
    );
  }

  void _startAnimIfSelectedChanged(bool isSelected) {
    if (_wasSelected != widget.isSelected) {
      widget.isSelected ? _iconAnimController.forward() : _iconAnimController.reverse();
    }
    _wasSelected = widget.isSelected;
  }
}
