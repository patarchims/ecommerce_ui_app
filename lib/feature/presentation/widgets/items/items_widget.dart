import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/pages/detail_page.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/color_palettes.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/navigation.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/badget/badge_widget.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigation.intent(context, DetailPage.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 10,
              blurStyle: BlurStyle.inner,
              spreadRadius: 5,
              color: const Color(0xFFF9C6C6).withOpacity(0.25))
        ], borderRadius: BorderRadius.circular(12), color: ColorPalettes.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              child: SizedBox(
                child: Stack(
                  children: [
                    Image.asset(
                      AppConstant.imageSatu,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 25,
                        width: 140,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.star,
                              color: ColorPalettes.white,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '5.0 | 200+ rating',
                              style: whitePoppins.copyWith(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.black.withOpacity(0.35))
                            ],
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                            color: ColorPalettes.yellowColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "RP. 6000",
                            style: whiteTextStyle.copyWith(
                                color: ColorPalettes.blueColor,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.lineThrough))),
                    Text(
                      "Rp.4000",
                      style: whiteTextStyle.copyWith(
                          color: ColorPalettes.blueColor),
                    )
                  ],
                ),
                BadgeWidget(color: ColorPalettes.blueColor, title: "Diskon 10%")
              ],
            ),
            Text(
              "Lorem ipsum",
              style: blackTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
