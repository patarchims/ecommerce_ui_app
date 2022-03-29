import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_ordo_mobile_ui/feature/domain/entities/item.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/pages/check_out_page.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/color_palettes.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/navigation.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/badget/badge_widget.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/profile_image/profile_image_widget.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/slider/item_slider.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/ulasan/ulasan_widget.dart';

class DetailPage extends StatefulWidget {
  static const routeName = "/detailItem";
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            padding: const EdgeInsets.all(12),
            child: FloatingActionButton(
              backgroundColor: ColorPalettes.blueColor,
              child: const Icon(
                FontAwesomeIcons.arrowLeft,
                size: 18,
              ),
              elevation: 0,
              onPressed: () {},
              heroTag: 'btn1',
            ),
          ),
          title: Text(
            "PRODUK DETAIL",
            style: whiteTextStyle.copyWith(
                color: ColorPalettes.blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 21),
          ),
          actions: [
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {
                Navigation.intent(context, CheckOutPage.routeName);
              },
              heroTag: 'btn4',
              elevation: 0,
              child: Icon(
                FontAwesomeIcons.bagShopping,
                size: 32,
                color: ColorPalettes.blueColor,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {},
              heroTag: 'btn2',
              elevation: 0,
              child: Icon(
                FontAwesomeIcons.solidBell,
                size: 32,
                color: ColorPalettes.dangerColor,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 12,
            ),
            CarouselSlider(
                items: listDetailItem
                    .asMap()
                    .entries
                    .map((e) => ItemSliderWidget(
                          image: e.value.image,
                        ))
                    .toList(),
                options: CarouselOptions(
                    height: 180,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    })),
            const SizedBox(
              height: 12,
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: listDetailItem
                  .asMap()
                  .entries
                  .map((e) => Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 12,
                        width: (e.key == _current) ? 45 : 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: (e.key == _current)
                                ? const Color(0xFF64A1F4)
                                : const Color(0xFF3C7DD9)),
                      ))
                  .toList(),
            )),
            const SizedBox(
              height: 34,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: ColorPalettes.dangerColor,
                        blurRadius: 0,
                        offset: const Offset(0, -20))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tas Gucci",
                        style: greenDarkTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const Spacer(),
                      BadgeWidget(
                          color: ColorPalettes.yellowColor,
                          title: "Barang Bekas"),
                      const SizedBox(
                        width: 12,
                      ),
                      BadgeWidget(
                          color: ColorPalettes.blueColor, title: "Stok 100")
                    ],
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
                      BadgeWidget(
                          color: ColorPalettes.blueColor, title: "Diskon 10%")
                    ],
                  ),
                  Divider(
                    color: ColorPalettes.greyButtonColor,
                    thickness: 2,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Vendor",
                      style: greenDarkTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        ProfileImageWidget(image: AppConstant.profile),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Eiger Store",
                          style: blackTextStyle,
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.star,
                              color: ColorPalettes.blueColor,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '5.0 | 200+ rating',
                              style: whitePoppins.copyWith(
                                  color: ColorPalettes.blueColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Deskipsi",
                      style: greenDarkTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                      textAlign: TextAlign.justify,
                      style: greenDarkTextStyle.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Ulasan Penilaian",
                      style: greenDarkTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const UlasanWidget(),
                  const SizedBox(
                    height: 14,
                  ),
                  const UlasanWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
