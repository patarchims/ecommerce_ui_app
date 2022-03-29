import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';

class ButtonWidgetOne extends StatelessWidget {
  final String name;
  final double height;
  final double borderRadius;
  final Function? onTap;
  const ButtonWidgetOne(
      {Key? key,
      required this.borderRadius,
      required this.name,
      this.onTap,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0, 7),
                    color: Colors.black.withOpacity(0.25))
              ],
              gradient: LinearGradient(colors: [
                const Color(0xFF0088CC),
                const Color(0xFF64B6DF).withOpacity(0.90),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: whiteTextStyle,
            ),
          )),
    );
  }
}
