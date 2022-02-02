import 'package:flutter/material.dart';
import 'package:services_page/misc/colors.dart';
import 'package:services_page/pages/widgets/app_large_text.dart';
import 'package:services_page/pages/widgets/app_text.dart';
import 'package:services_page/pages/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //declaration for images
  List images = [
    "background_website.png",
    "background_contentCreator.png",
    "background_digitalMarkiting.png",
    "background_mobileapp.png",
  ];
  //declaration for text Title
  List textTitle = [
    "تطوير وتصميم مواقع الانترنت",
    "صناعة محتوى",
    "التسويق الالكتروني",
    "تطوير تطبيقات الجوال",
  ];
  //declaration for text descriptions
  List text = [
    "تقدم شركة فاز خدمة تصميم مواقع إلكترونية إحترافية تتوافق مع كافة المتصفحات وكافة الأجهزة الرقمية، نقدم لكم موقع إلكتروني متوافق مع محركات البحث بتصميم جذاب وسريع",
    "تقدم شركة فاز خدمة تصميم مواقع إلكترونية إحترافية تتوافق مع كافة المتصفحات وكافة الأجهزة الرقمية، نقدم لكم موقع إلكتروني متوافق مع محركات البحث بتصميم جذاب وسريع",
    "تقدم شركة فاز خدمة تصميم مواقع إلكترونية إحترافية تتوافق مع كافة المتصفحات وكافة الأجهزة الرقمية، نقدم لكم موقع إلكتروني متوافق مع محركات البحث بتصميم جذاب وسريع",
    "تقدم شركة فاز خدمة تصميم مواقع إلكترونية إحترافية تتوافق مع كافة المتصفحات وكافة الأجهزة الرقمية، نقدم لكم موقع إلكتروني متوافق مع محركات البحث بتصميم جذاب وسريع",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
      return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "lib/assist/" + images[index]
                  ),
                  fit: BoxFit.cover
              )
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 50,right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppLargeText(text: textTitle[index], textDirection: TextDirection.rtl,),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      child: AppText(text: text[index]),
                    ),
                    SizedBox(height: 40,),
                    ResponsiveButton(width: 120,)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(4, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      width: 8,
                      height: index == indexDots?25:8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots?AppColors.button2:AppColors.dots,
                      ),
                    );
                  }),
                )
              ],
            ),
          )
      );
    }
)
    );
  }
}
