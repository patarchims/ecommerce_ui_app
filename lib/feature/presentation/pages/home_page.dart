import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/domain/entities/item.dart';
import 'package:test_ordo_mobile_ui/feature/domain/entities/slider.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/color_palettes.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/button/button_header.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/button_navigation_bar/button_navigationbar_widget.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/items/items_widget.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/slider/slider_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/homePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        bottomNavigationBar: const ButtonNavigationBarWidget(),
        body: Column(children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: ColorPalettes.greyColor,
                        borderRadius: BorderRadius.circular(35)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ButtonHeader(
                              color: Colors.transparent,
                              icon: AppConstant.searchIcon),
                          Text(
                            "Cari dengan mengetik barang",
                            style: greyPoppins.copyWith(fontSize: 11),
                          )
                        ],
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 7,
                  ),
                  ButtonHeader(
                      color: ColorPalettes.blueColor,
                      icon: AppConstant.categoryIcon),
                  const SizedBox(
                    width: 8,
                  ),
                  ButtonHeader(
                      color: ColorPalettes.yellowColor,
                      icon: AppConstant.shopIcon),
                  const SizedBox(
                    width: 8,
                  ),
                  ButtonHeader(
                      color: ColorPalettes.dangerColor,
                      icon: AppConstant.belIcon),
                ]),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              CarouselSlider(
                  items: sliderItem
                      .asMap()
                      .entries
                      .map((e) => SliderWidget(
                            image: e.value.image,
                          ))
                      .toList(),
                  options: CarouselOptions(
                      height: 180,
                      viewportFraction: 1,
                      aspectRatio: 2.0,
                      autoPlay: true,
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
                children: sliderItem
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
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.count(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 12,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 12,
                  children: List.generate(
                      listItem.length, (index) => const ItemWidget()),
                ),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
