import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/color_palettes.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/style/style/fonts_style.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/navigation.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/widgets/button/button_widget_one.dart';

class CheckOutPage extends StatefulWidget {
  static const routeName = "/checkOutPage";
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  void initState() {
    super.initState();
  }

  bool isCatatan = false;
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
              onPressed: () {
                Navigation.back(context);
              },
              heroTag: 'btn1',
            ),
          ),
          title: Text(
            "Check Out ",
            style: whiteTextStyle.copyWith(
                color: ColorPalettes.blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 21),
          ),
        ),
        body: ListView(
          children: [
            Slidable(
              // Specify a key if the Slidable is dismissible.
              key: const ValueKey(0),

              // The start action pane is the one at the left or the top side.

              // The end action pane is the one at the right or the bottom side.
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    heroTag: 'btn7',
                    child: const Icon(FontAwesomeIcons.trashCan),
                  )
                ],
              ),

              // The child of the Slidable is what the user sees when the
              // component is not dragged.
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width - 2 * 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                          ClipOval(
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(AppConstant.bag1)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        blurStyle: BlurStyle.inner,
                                        spreadRadius: 10,
                                        color: Colors.black.withOpacity(0.6))
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tas Gucci",
                                style: blackTextStyle,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Rp. 75.000",
                                style: blackTextStyle.copyWith(
                                    color: ColorPalettes.blueColor),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tas Gucci",
                                style: blackTextStyle,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                height: 25,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                  onPressed: () {
                                    setState(() {
                                      isCatatan != isCatatan;
                                      print(isCatatan);
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.pencil,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Catatan',
                                        textAlign: TextAlign.center,
                                        style: whiteTextStyle.copyWith(
                                            fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 6,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    (isCatatan == false)
                        ? Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width - 2 * 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Catatan",
                                    style: blackTextStyle,
                                  ),
                                ),
                                TextFormField(
                                  style: blackTextStyle,
                                  obscureText: false,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    hintText: 'Ketik disini',
                                    border: styleBorder(),
                                    enabledBorder: styleBorder(),
                                    focusedBorder: styleBorder(),
                                    disabledBorder: styleBorder(),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: MediaQuery.of(context).size.width - 2 * 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Catatan Pesanan",
                        style: blackTextStyle,
                      ),
                    ),
                    TextFormField(
                      style: blackTextStyle,
                      obscureText: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: 'Ketik disini',
                        border: styleBorder(),
                        enabledBorder: styleBorder(),
                        focusedBorder: styleBorder(),
                        disabledBorder: styleBorder(),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: const ButtonWidgetOne(
                borderRadius: 12,
                height: 54,
                name: 'Bayar Sekarang',
              ),
            )
          ],
        ),
      ),
    );
  }

  void doNothing(BuildContext context) {}
}

InputBorder styleBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      width: 0,
      color: Colors.grey,
    ),
  );
}
