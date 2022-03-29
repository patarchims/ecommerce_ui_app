import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String image;
  const ProfileImageWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 42,
        width: 42,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(image))),
      ),
    );
  }
}
