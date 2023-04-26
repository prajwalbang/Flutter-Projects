import 'package:flutter/material.dart';
import 'package:ghar_ka_khana_2/const/colors.dart';
import 'package:ghar_ka_khana_2/utils/helper.dart';
import 'package:ghar_ka_khana_2/widgets/customNavBar.dart';

import 'aboutScreen.dart';
import 'inboxScreen.dart';
import 'myOrderScreen.dart';
import 'notificationScreen.dart';
import 'paymentScreen.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = "/moreScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "More",
                          style: Helper.getTheme(context).headline5,
                        ),
                        Image.asset(
                          Helper.getAssetName("cart.png", "virtual"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName("income.png", "virtual"),
                      ),
                      name: "Payment Details",
                      handler: () {
                        Navigator.of(context)
                            .pushNamed(PaymentScreen.routeName);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName("shopping_bag.png", "virtual"),
                      ),
                      name: "My Orders",
                      handler: () {
                        Navigator.of(context)
                            .pushNamed(MyOrderScreen.routeName);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName("noti.png", "virtual"),
                      ),
                      name: "Notifications",
                      handler: () {
                        Navigator.of(context)
                            .pushNamed(NotificationScreen.routeName);
                      },
                      isNoti: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName("mail.png", "virtual"),
                      ),
                      name: "Inbox",
                      handler: () {
                        Navigator.of(context).pushNamed(InboxScreen.routeName);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MoreCard(
                      image: Image.asset(
                        Helper.getAssetName("info.png", "virtual"),
                      ),
                      name: "About Us",
                      handler: () {
                        Navigator.of(context).pushNamed(AboutScreen.routeName);
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              more: true,
            ),
          ),
        ],
      ),
    );
  }
}

class MoreCard extends StatelessWidget {
  const MoreCard({
    Key? key,
    required String name,
    required Image image,
    bool isNoti = false,
    this.handler,
  })  : _name = name,
        _image = image,
        _isNoti = isNoti,
        super(key: key);

  final String _name;
  final Image _image;
  final bool _isNoti;
  final void Function()? handler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Container(
        height: 70,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(
                right: 20,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: AppColor.placeholderBg,
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: AppColor.placeholder,
                    ),
                    child: _image,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    _name,
                    style: TextStyle(
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: AppColor.placeholderBg,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColor.secondary,
                  size: 17,
                ),
              ),
            ),
            if (_isNoti)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 20,
                  width: 20,
                  padding: const EdgeInsets.only(
                    right: 50,
                  ),
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "15",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
