import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/color_palettes.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/profile_image/profile_image_widget.dart';

class UlasanWidget extends StatelessWidget {
  const UlasanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              ProfileImageWidget(image: AppConstant.profile2),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maudel Hall",
                    style: greenDarkTextStyle.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "14 min",
                    style: greyPoppins.copyWith(
                        fontWeight: FontWeight.normal, fontSize: 9),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.star,
                color: ColorPalettes.dangerColor,
                size: 18,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                '5.0 ',
                style: whitePoppins.copyWith(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
            textAlign: TextAlign.justify,
            style: greenDarkTextStyle,
          )
        ],
      ),
    );
  }
}
