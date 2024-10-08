import 'package:e_learning_app/core/constant/app_images.dart';
import 'package:e_learning_app/modules/level/controller/track_controller.dart';
import 'package:e_learning_app/modules/level/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BuildTopicCircle extends GetView<TrackController> {
  final String textTopic;
  const BuildTopicCircle({super.key, required this.textTopic});

  @override
  Widget build(BuildContext context) {
    return  Obx(() {
      bool isSelected = controller.isSelected(textTopic);
      return Stack(children: [
      CustomButton(text: textTopic,fontSize: 12, width: 102, height: 102, borderRadius: 102,onTap: () {
        controller.toggleTopic(textTopic);
      },),

      if(isSelected)  Positioned(
                top: 5,
                right: 5,
                child: SvgPicture.asset(Assets.imagesSelectedTopics),
              )
     

    ],);
    },);
  }
}
