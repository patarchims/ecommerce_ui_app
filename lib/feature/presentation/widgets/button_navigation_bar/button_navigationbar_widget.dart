import 'package:flutter/material.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';

class ButtonNavigationBarWidget extends StatelessWidget {
  const ButtonNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppConstant.listIcon,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppConstant.historyIcon,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppConstant.homeIcon,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppConstant.chartIcon,
              height: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              AppConstant.profileIcon,
              height: 24,
            ),
          ),
        ]);
  }
}
