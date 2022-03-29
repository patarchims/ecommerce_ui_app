import 'package:flutter/material.dart';

class ButtonHeader extends StatelessWidget {
  final Color color;
  final String icon;
  const ButtonHeader({Key? key, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
