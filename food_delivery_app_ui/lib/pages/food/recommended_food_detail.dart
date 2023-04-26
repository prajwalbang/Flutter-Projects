import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghar_ka_khana/utils/colors.dart';
import 'package:ghar_ka_khana/utils/dimensions.dart';
import 'package:ghar_ka_khana/widgets/app_icon.dart';
import 'package:ghar_ka_khana/widgets/big_text.dart';
import 'package:ghar_ka_khana/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Roti Sabji")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "Ghar ka khana maa ke haatho se banaya with love and ghar ke masale, healthy and nutritious food. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal. Two kinds of sabji, 1 dal, 2 rotis, 1 cup rice, complimentary papad, salad, achaar.Roti, sabji, dal chawal.",
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconsize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "₹80 " + " X " + " 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconsize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child:
                      BigText(text: "₹80 | Add to cart", color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
