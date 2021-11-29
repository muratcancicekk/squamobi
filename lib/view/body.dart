import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:squamobi/core/model/card_model.dart';
import 'package:squamobi/core/model/page_model.dart';
import 'package:squamobi/ui/shared/constants.dart';
import 'package:squamobi/ui/shared/text_style.dart';
import 'package:squamobi/ui/shared/ui_helper.dart';
import 'package:squamobi/ui/shared/widget/card/card.dart';
import 'package:squamobi/ui/shared/widget/card/popular_card.dart';
import 'package:squamobi/ui/shared/widget/categories/categories.dart';
import 'package:squamobi/ui/shared/widget/elevatedtextbutton/elevated_text_button.dart';
import 'package:squamobi/ui/shared/widget/rule/rule.dart';
import 'package:squamobi/ui/shared/widget/splash/splash_text.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cancel,
              Expanded(flex: 5, child: header),
              Expanded(flex: 11, child: categories),
              Expanded(
                flex: 3,
                child: splashTitle,
              ),
              Expanded(flex: 11, child: cardCategories),
              Expanded(
                flex: 2,
                child: ElevatedTextButton(
                  onPress: () {},
                  text: Constants.CONTUNIE,
                ),
              ),
              Spacer(),
              Expanded(flex: 1, child: rules)
            ],
          ),
        ),
      ),
    );
  }

  SvgPicture get cancel {
    return SvgPicture.asset(
      Constants.CANCEL_BUTTON_IMAGE,
      width: 8.w,
      alignment: Alignment.topLeft,
    );
  }

  Center get header {
    return Center(
      child: Container(
        width: 65.w,
        height: 15.h,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: Constants.HEADER_TITLE,
            style: headerTextStyle,
          ),
        ),
      ),
    );
  }

  Column get categories {
    return Column(
      children: [
        Categories(
          text: Constants.CATAGORIES_TITLE,
          color: UIHelper().GREEN,
          image: UIHelper.CATEGORIES_IMAGE,
        ),
        Categories(
          text: Constants.CATAGORIES_TITLE,
          color: Colors.orange,
          image: UIHelper.CATEGORIES_IMAGE,
        ),
        Categories(
          text: Constants.CATAGORIES_TITLE,
          color: Colors.blue,
          image: UIHelper.CATEGORIES_IMAGE,
        ),
      ],
    );
  }

  Column get splashTitle {
    return Column(
      children: [
        Consumer<PageModel>(
          builder: (context, pageModel, child) {
            return Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  pageModel.CurrentPage(value);
                },
                itemCount: splashDatas.length,
                itemBuilder: (context, index) => splashContext(
                  text: splashDatas[index]["title"]!,
                ),
              ),
            );
          },
        ),
        Consumer<PageModel>(
          builder: (context, pageModel, child) {
            return Expanded(
              child: Container(
                width: 15.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      splashDatas.length, (index) => buildDot(index: index)),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Row get cardCategories {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Consumer<CardModel>(
          builder: (context, cardModel, child) {
            return Cards(
              text: "999.99\$ per month auto renewable",
              active: active1,
              onPress: () {
                cardModel.choise(1);
              },
            );
          },
        ),
        Consumer<CardModel>(
          builder: (context, cardModel, child) {
            return PopularCard(
              text: "999.99\$ per month auto renewable",
              active: active2,
              save: 23,
              trial: 3,
              onPress: () {
                cardModel.choise(2);
              },
            );
          },
        ),
        Consumer<CardModel>(
          builder: (context, cardModel, child) {
            return Cards(
              active: active3,
              text: "999.99\$ per month auto renewable",
              onPress: () {
                cardModel.choise(3);
              },
            );
          },
        ),
      ],
    );
  }

  Row get rules {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Rule(
          onPress: () {},
          ruleText: Constants.TERMS,
        ),
        Rule(
          onPress: () {},
          ruleText: Constants.PRIVACY,
        ),
        Rule(
          onPress: () {},
          ruleText: Constants.RESTORE,
        ),
      ],
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      height: currentPage == index ? 8 : 6,
      width: currentPage == index ? 8 : 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:
              currentPage == index ? UIHelper().DEEP_PURPLE : UIHelper().GREY),
      duration: Duration(milliseconds: UIHelper.SPLASH_DURATION),
    );
  }
}
