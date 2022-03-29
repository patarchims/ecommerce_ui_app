import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String image;
  const SliderWidget({Key? key, required this.image}) : super(key: key);

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
              fit: BoxFit.cover)),
    );
  }
}
