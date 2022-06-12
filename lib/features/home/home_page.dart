import 'package:cryptp_ui/core/platforms/colors.dart';
import 'package:cryptp_ui/core/presentation/layout/responsive_modes.dart';

import 'package:cryptp_ui/core/presentation/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSmallScreen = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(Get.width, 50),
              child: Builder(builder: (cxt) {
                return Responsive(
                  desktop: appBar(),
                  tablet: appbarForMobile(
                      child: InkWell(
                          onTap: (() => Scaffold.of(context).openDrawer()),
                          child: const Drawer(
                            child: Icon(Icons.menu),
                          ))),
                  mobile: appbarForMobile(
                      child: InkWell(
                          onTap: (() => Scaffold.of(context).openDrawer()),
                          child: Drawer(
                            backgroundColor: AppColors.cryptoCyan,
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ))),
                );
              })),
          body: Responsive(
            tablet: tabletMode(),
            mobile: mobileMode(),
            desktop: desktopMode(),
          )),
    );
  }
}
