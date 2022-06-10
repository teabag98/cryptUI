import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptp_ui/core/platforms/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _sizer() {
    return const SizedBox(
      width: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 70,
            leading: SizedBox(
              width: Get.width * 0.3,
              height: 20,
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    right: 3,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: AppColors.cryptoCyan,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: CircleAvatar(
                      backgroundColor: AppColors.cryptoCyan,
                      radius: 15,
                    ),
                  ),
                ],
              ),
            ),
            title: Row(
              children: [
                const AutoSizeText(
                  "CryptPay",
                  minFontSize: 30,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _sizer(),
                GestureDetector(
                  child: const AutoSizeText(
                    "Buy Crypto",
                    minFontSize: 16,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                _sizer(),
                GestureDetector(
                  child: Row(
                    children: const [
                      AutoSizeText(
                        "Business",
                        minFontSize: 16,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 25,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
            actions: [],
          ),
          body: Container()),
    );
  }
}
