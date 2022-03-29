import 'package:flutter/material.dart';

class ItemSliderWidget extends StatelessWidget {
  final String image;
  const ItemSliderWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 2 * 24,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fitHeight)),
    );
  }
}
