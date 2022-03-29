import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/pages/check_out_page.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/pages/detail_page.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        DetailPage.routeName: (context) => const DetailPage(),
        HomePage.routeName: (context) => const HomePage(),
        CheckOutPage.routeName: (context) => const CheckOutPage(),
      },
    );
  }
}
