import 'package:flutter/material.dart';
import 'package:fundi_sawa/models/on_boarding_model.dart';
import 'package:fundi_sawa/screens/widgets/on_boarding_page_widget.dart';
import 'package:fundi_sawa/utils/image_strings.dart';
import 'package:fundi_sawa/utils/text_strings.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:fundi_sawa/utils/colors.dart'as app_colors;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counter: tOnBoardingCounter1,
        bgColor: app_colors.backgroundColor,
        height: size.height,

      )),

      OnBoardingPageWidget(model: OnBoardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counter: tOnBoardingCounter2,
        bgColor: app_colors.backgroundColor,
        height: size.height,

      )),

      OnBoardingPageWidget(model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counter: tOnBoardingCounter3,
        bgColor: app_colors.backgroundColor,
        height: size.height,

      )),

      OnBoardingPageWidget(model: OnBoardingModel(
        image: tOnBoardingImage4,
        title: tOnBoardingTitle4,
        subTitle: tOnBoardingSubTitle4,
        counter: tOnBoardingCounter4,
        bgColor: app_colors.backgroundColor,
        height: size.height,

      ))
    ];



    return Scaffold(

      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,

          ),
          Positioned(
              bottom: 30,
              right: 20,
              child: TextButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));

            },
              child: const Text("Skip", style: orangeText,),
          )),

          Positioned(
              bottom: 40,
              left: 20,
              child: AnimatedSmoothIndicator(
                count: 4,
                activeIndex: controller.currentPage,
                effect: WormEffect(
                  activeDotColor: app_colors.primaryColor,
                  dotHeight: 5,
            ),

          )
          )
        ],

      )
    );
  }

  onPageChangedCallBack(int activePageIndex){
    setState(() {
      currentPage = activePageIndex;
    });

  }
}


