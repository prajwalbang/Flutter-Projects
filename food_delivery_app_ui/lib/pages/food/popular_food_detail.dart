import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghar_ka_khana/utils/dimensions.dart';
import 'package:ghar_ka_khana/widgets/app_column.dart';
import 'package:ghar_ka_khana/widgets/app_icon.dart';
import 'package:ghar_ka_khana/widgets/expandable_text_widget.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icons_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food0.jpg",
                    ),
                  ),
                ),
              )),
          //icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          //intro of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                //icons and shit!!

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Roti Sabji"),
                    SizedBox(height: Dimensions.height20),
                    BigText(text: "Items :"),
                    SizedBox(height: Dimensions.height20),
                    //expandable text widget
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "Ghar ka khana maa ke haatho se banaya with love and ghar ke masale, healthy and nutritious food. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal."),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(text: "₹80 | Add to cart", color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
