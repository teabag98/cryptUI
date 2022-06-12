import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptp_ui/core/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../platforms/app_images.dart';
import '../../platforms/colors.dart';

Widget _sizer() {
  return const SizedBox(
    width: 20,
  );
}

Widget _columnSizer({double? height}) {
  return SizedBox(height: height ?? 20);
}

Widget mobileMode() {
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Column(
      children: [
        Center(
          child: Container(
            width: Get.width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _columnSizer(height: 200),
                      const AutoSizeText(
                        "Trade Crypto with ease",
                        minFontSize: 50,
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
                        width: Get.width * 0.3,
                        hasIcon: false,
                        label: "Buy crypto",
                        padding: const EdgeInsets.only(
                            right: 8.0, left: 8.0, top: 20, bottom: 20),
                        radius: 20,
                        color: AppColors.cryptoCyan,
                      ),
                      _columnSizer(height: 34),
                      SizedBox(
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const AutoSizeText(
                              "Trusted by 2B+ people",
                              minFontSize: 11,
                              maxFontSize: 13,
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
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            const Text(
                              "Trust pilot",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Image.asset("assets/png/homePageHero.png"),
                )
              ],
            ),
          ),
        ),
        _columnSizer(),
        Container(
          decoration: BoxDecoration(
              color: AppColors.cryptoCyan,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          width: Get.width * 0.8,
          height: Get.height * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AutoSizeText(
                "Get started",
                minFontSize: 25,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.bitcoin)),
                    label: const Text("Bitcoin"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.tether)),
                    label: const Text("tether"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.binance)),
                    label: const Text("binance"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.litecoin)),
                    label: const Text("litecoin"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.solana)),
                    label: const Text("solana"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.ethereum)),
                    label: const Text("ethereum"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                ],
              ),
            ],
          ),
        ),
        _columnSizer(),
        Container(
          color: Colors.black,
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Product",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "on and off ramps",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Nft ramp",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "concierge",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Company",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Security",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Terms of Use",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Licences",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "News",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Careers",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Media",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Support",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Contacts us",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Help center",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "status",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Divider(
                height: Get.height * 0.3,
                thickness: 10,
                color: Colors.white,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AutoSizeText("Subscribe to our newsletter"),
                  Row(
                    children: const [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  Container(
                    width: Get.width * 0.7,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.black.withOpacity(0.3)),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  _columnSizer(height: 10),
                  SizedBox(
                      width: Get.width * 0.5,
                      child: Column(
                        children: [
                          SizedBox(
                            width: Get.width * 0.3,
                            child: const Chip(
                              backgroundColor: Colors.white,
                              // avatar: SizedBox(
                              //     width: 20,
                              //     height: 20,
                              //     child: Icon(Icon)),
                              label: Text("Subscribe"),
                              padding: EdgeInsets.only(
                                  right: 50.0, left: 50.0, top: 20, bottom: 20),
                            ),
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            hoverColor: AppColors.cryptoCyan,
                            activeColor: Colors.green,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const AutoSizeText(
                            "Checkbox to subsribe \n,to CryptPay and receive, \ndaily botifications",
                            maxLines: 3,
                            maxFontSize: 15,
                            minFontSize: 10,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget tabletMode() {
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Column(
      children: [
        Center(
          child: Container(
            width: Get.width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _columnSizer(height: 200),
                      const AutoSizeText(
                        "Trade Crypto with ease",
                        minFontSize: 50,
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
                        width: Get.width * 0.3,
                        hasIcon: false,
                        label: "Buy crypto",
                        padding: const EdgeInsets.only(
                            right: 8.0, left: 8.0, top: 20, bottom: 20),
                        radius: 20,
                        color: AppColors.cryptoCyan,
                      ),
                      _columnSizer(height: 34),
                      SizedBox(
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const AutoSizeText(
                              "Trusted by 2B+ people",
                              minFontSize: 11,
                              maxFontSize: 13,
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
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            const Text(
                              "Trust pilot",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  child: Image.asset("assets/png/homePageHero.png"),
                )
              ],
            ),
          ),
        ),
        _columnSizer(),
        Container(
          decoration: BoxDecoration(
              color: AppColors.cryptoCyan,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          width: Get.width * 0.8,
          height: Get.height * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AutoSizeText(
                "Get started",
                minFontSize: 25,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.bitcoin)),
                    label: const Text("Bitcoin"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.tether)),
                    label: const Text("tether"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.binance)),
                    label: const Text("binance"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.litecoin)),
                    label: const Text("litecoin"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.solana)),
                    label: const Text("solana"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.ethereum)),
                    label: const Text("ethereum"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  _columnSizer(height: 10),
                ],
              ),
            ],
          ),
        ),
        _columnSizer(),
        Container(
          color: Colors.black,
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Product",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "on and off ramps",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Nft ramp",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "concierge",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Company",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Security",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Terms of Use",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Licences",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "News",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Careers",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Media",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Support",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Contacts us",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Help center",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "status",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Divider(
                height: Get.height * 0.3,
                thickness: 10,
                color: Colors.white,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AutoSizeText("Subscribe to our newsletter"),
                  Row(
                    children: const [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  Container(
                    width: Get.width * 0.7,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.black.withOpacity(0.3)),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  _columnSizer(height: 10),
                  SizedBox(
                      width: Get.width * 0.5,
                      child: Column(
                        children: [
                          SizedBox(
                            width: Get.width * 0.3,
                            child: const Chip(
                              backgroundColor: Colors.white,
                              // avatar: SizedBox(
                              //     width: 20,
                              //     height: 20,
                              //     child: Icon(Icon)),
                              label: Text("Subscribe"),
                              padding: EdgeInsets.only(
                                  right: 50.0, left: 50.0, top: 20, bottom: 20),
                            ),
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            hoverColor: AppColors.cryptoCyan,
                            activeColor: Colors.green,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const AutoSizeText(
                            "Checkbox to subsribe \n,to CryptPay and receive, \ndaily botifications",
                            maxLines: 3,
                            maxFontSize: 15,
                            minFontSize: 10,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget desktopMode() {
  return SingleChildScrollView(
    physics: const ScrollPhysics(),
    child: Column(
      children: [
        Center(
          child: Container(
            width: Get.width * 0.7,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: Get.width * 0.35,
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
                      _columnSizer(height: 34),
                      SizedBox(
                        width: Get.width * 0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const AutoSizeText(
                              "Trusted by 2B+ people",
                              minFontSize: 15,
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
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            const Text(
                              "Trust pilot",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.35,
                  child: Image.asset("assets/png/homePageHero.png"),
                )
              ],
            ),
          ),
        ),
        _columnSizer(),
        Container(
          decoration: BoxDecoration(
              color: AppColors.cryptoCyan,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          width: Get.width * 0.7,
          height: Get.height * 0.30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AutoSizeText(
                "Get started",
                minFontSize: 25,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.bitcoin)),
                    label: const Text("Bitcoin"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.solana)),
                    label: const Text("solana"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.ethereum)),
                    label: const Text("ethereum"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.tether)),
                    label: const Text("tether"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.binance)),
                    label: const Text("binance"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                  Chip(
                    avatar: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(AppImages.litecoin)),
                    label: const Text("litecoin"),
                    padding: const EdgeInsets.only(
                        right: 50.0, left: 50.0, top: 20, bottom: 20),
                  ),
                ],
              )
            ],
          ),
        ),
        _columnSizer(),
        Container(
          color: Colors.black,
          width: Get.width,
          height: Get.height * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Product",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "on and off ramps",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Nft ramp",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "concierge",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Company",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Security",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Terms of Use",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Licences",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "News",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Careers",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Media",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Support",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Contacts us",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Help center",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "status",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const Divider(
                // height: Get.height * 0.3,
                thickness: 0.2,
                color: Colors.white,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AutoSizeText("Subscribe to our newsletter"),
                  Row(
                    children: const [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  Container(
                    width: Get.width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.black.withOpacity(0.3)),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                      width: Get.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: Get.width,
                            child: const Chip(
                              backgroundColor: Colors.white,
                              // avatar: SizedBox(
                              //     width: 20,
                              //     height: 20,
                              //     child: Icon(Icon)),
                              label: Text("Subscribe"),
                              padding: EdgeInsets.only(
                                  right: 50.0, left: 50.0, top: 20, bottom: 20),
                            ),
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            hoverColor: AppColors.cryptoCyan,
                            activeColor: Colors.green,
                            fillColor: MaterialStateProperty.all(Colors.white),
                          ),
                          const AutoSizeText(
                            "Checkbox to subsribe \n,to CryptPay and receive, \ndaily botifications",
                            maxLines: 3,
                            maxFontSize: 15,
                            minFontSize: 10,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 70,
    leading: SizedBox(
      width: Get.width * 0.3,
      height: 20,
      child: Container(
        color: AppColors.cryptoCyan,
        child: const Center(
          child: AutoSizeText(
            "Cp",
            minFontSize: 30,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
  );
}

AppBar appbarForMobile({required Widget child}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: child,
  );
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
