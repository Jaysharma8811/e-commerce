import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance =>Get.find();




//   variables
final pageController=PageController();
var currentPageIndex=0.obs;
// update current Index when page scroll

void updatePageIndicator(index)=>currentPageIndex.value=index;



// jump to specific dot selected page
void dotNavigationClick(index){
currentPageIndex.value=index;
pageController.jumpToPage(index);
}

// update current Index & jump to next page

void nextPage(){
  if(currentPageIndex.value==2){
    Get.offAll(const LoginScreen());
  }else{
    int page=currentPageIndex.value+1;
    pageController.jumpToPage(page);
  }
}

//   update current index & jump to the last page

void skipPage(){
  currentPageIndex.value=2;
  pageController.jumpTo(2);
}
}