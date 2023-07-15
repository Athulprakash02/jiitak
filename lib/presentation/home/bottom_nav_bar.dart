import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';
import 'package:jiitak/presentation/home/home.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   

    List<PersistentBottomNavBarItem> _navBarsItems(){
      return [

        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          title: ("さがす"),
          activeColorPrimary: Color(0xFFFAAA14),
          inactiveColorPrimary: kBlackColor,
        ), PersistentBottomNavBarItem(
          icon: const Icon(Icons.business_center_outlined
          ),
          title: ("お仕事"),
          activeColorPrimary: Color(0xFFFAAA14),
          inactiveColorPrimary: kBlackColor,
        ),

        PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.qr_code_scanner_outlined,
            color: Colors.white,
          ),
          inactiveIcon: const Icon(
            Icons.qr_code_scanner_outlined,
            color: Colors.white,
          ),
          
          activeColorPrimary:Color(0xFFFAAA14),
          inactiveColorPrimary: kBlackColor,
        ),

        PersistentBottomNavBarItem(
          icon: const Icon(Icons.chat_bubble_outline),
          title: ("チャット"),
          activeColorPrimary: Color(0xFFFAAA14),
          inactiveColorPrimary:kBlackColor,
        ),PersistentBottomNavBarItem(
          icon: const Icon(Icons.person_2_outlined),
          title: ("マイページ"),
          activeColorPrimary: Color(0xFFFAAA14),
          inactiveColorPrimary: kBlackColor,
        ),

      ];


    }

    // PersistentTabController controller;

    // controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      screens: [HomeScreen(),Container(),Container(),Container(),Container()],
      items: _navBarsItems(),
      // controller: controller,
      // confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      // popAllScreensOnTapOfSelectedTab: true,
      // popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style15,


    );
  }
}