import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';

class BadgeWidget extends StatelessWidget {
  final Color color;
  final String title;
  const BadgeWidget({Key? key, required this.color, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: whiteTextStyle.copyWith(fontSize: 11),
        ),
      ),
    );
  }
}
