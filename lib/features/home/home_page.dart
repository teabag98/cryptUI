import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptp_ui/core/platforms/colors.dart';
import 'package:cryptp_ui/core/presentation/widgets/app_button.dart';
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

  Widget _columnSizer({double? height}) {
    return SizedBox(height: height ?? 20);
  }

  final List<Widget> _widgetList = [
    // Container(
    //   width: 1,
    //   color: Colors.white,
    //   height: 20,
    // ),
    const AutoSizeText(
      "Products",
      minFontSize: 16,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            backgroundColor: AppColors.cryptoCyan,
            child: const Icon(
              Icons.wallet_rounded,
              color: Colors.white,
            )),
        const AutoSizeText("on-and-off-ramps")
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
            backgroundColor: AppColors.cryptoCyan,
            child: const Icon(
              Icons.image,
              color: Colors.white,
            )),
        const AutoSizeText("NFT checkout")
      ],
    ),
    const SizedBox(
      height: 5,
    ),
    AppButton(
      hasIcon: false,
      color: const Color.fromARGB(179, 53, 50, 50).withOpacity(0.5),
      padding: const EdgeInsets.all(7),
      label: "Partner Login",
    ),
    const SizedBox(
      height: 5,
    ),
  ];

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
                    children: [
                      // const AutoSizeText(
                      //   "Business",
                      //   minFontSize: 16,
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontWeight: FontWeight.normal,
                      //   ),
                      // ),
                      // Icon(
                      //   Icons.arrow_drop_down,
                      //   size: 25,
                      //   color: Colors.black,
                      // )

                      DropdownButton<Widget>(
                        underline: const SizedBox(),
                        hint: const AutoSizeText(
                          "Business",
                          textAlign: TextAlign.center,
                          minFontSize: 20,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        items: _widgetList.map((Widget widget) {
                          return DropdownMenuItem<Widget>(
                            value: widget,
                            child: widget,
                          );
                        }).toList(),
                        onChanged: (_) {},
                      )
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              GestureDetector(
                onTap: (() {}),
                child: const AutoSizeText(
                  "About",
                  minFontSize: 25,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              _sizer(),
              GestureDetector(
                onTap: (() {}),
                child: const AutoSizeText(
                  "Careers",
                  minFontSize: 25,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              _sizer(),
              GestureDetector(
                onTap: (() {}),
                child: const AutoSizeText(
                  "Blog",
                  minFontSize: 25,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              _sizer(),
              GestureDetector(
                onTap: (() {}),
                child: const AutoSizeText(
                  "Help Center",
                  minFontSize: 25,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              _sizer(),
              _sizer()
            ],
          ),
          body: Center(
            child: Container(
              width: Get.width * 0.7,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: Get.width * 0.25,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _columnSizer(height: 200),
                        const AutoSizeText(
                          "Trade Crypto with ease",
                          minFontSize: 80,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _columnSizer(),
                        const AutoSizeText(
                          "Fastest way to trade crypto",
                          minFontSize: 25,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        _columnSizer(),
                        AppButton(
                          width: Get.width * 0.12,
                          hasIcon: false,
                          label: "Buy crypto",
                          padding: const EdgeInsets.only(
                              right: 8.0, left: 8.0, top: 20, bottom: 20),
                          radius: 20,
                          color: AppColors.cryptoCyan,
                        ),
                        _columnSizer(height: 25),
                        Row(
                          children: [
                            const AutoSizeText(
                              "Trusted by 2B+ people",
                              minFontSize: 25,
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              color: Colors.green,
                              child: const Text(
                                "4.9/5",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            const AutoSizeText(
                              "Trust Pilot",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              maxFontSize: 10,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
