import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnboardingControllerRepo extends GetxController{
  nextStart();
  onPageChangedStart(int index);

}