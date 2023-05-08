import 'package:flutter/material.dart';
import 'package:fundi_sawa/models/on_boarding_model.dart';
import 'package:fundi_sawa/utils/text_strings.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Image(image: AssetImage(model.image), height: model.height *0.4,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.title, style: mainTitle,),
              SizedBox(height: 15,),
              Text(model.subTitle, style: subTitle,),
              SizedBox(height: 50.0,)
            ],
          ),
        ],
      ),

    );
  }
}