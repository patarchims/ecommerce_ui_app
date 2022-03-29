import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String icon;
  const ButtonWidget({Key? key, required this.color, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 42,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            primary: color,
            elevation: 0,
          ),
          onPressed: () {},
          child: SizedBox(
            height: 28,
            width: 28,
            child: Image.asset(
              icon,
              fit: BoxFit.fitWidth,
            ),
          )),
    );
  }
}
