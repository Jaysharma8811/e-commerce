import "package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:ecommerce/utils/constants/colors.dart";
import "package:ecommerce/utils/constants/image_strings.dart";
import "package:ecommerce/utils/constants/text_strings.dart";
import "package:ecommerce/utils/device/device_utility.dart";
import "package:ecommerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

import "../../../../utils/constants/sizes.dart";
import "../widgets/onboarding_dot_navigation.dart";
import "../widgets/onboarding_next_button.dart";
import "../widgets/onboarding_page.dart";
import "../widgets/onboarding_skip.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //   horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImages1,
                subTitle: TTexts.onBoardingSubTitle1,
                title: TTexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImages2,
                subTitle: TTexts.onBoardingSubTitle2,
                title: TTexts.onBoardingTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImages3,
                subTitle: TTexts.onBoardingSubTitle3,
                title: TTexts.onBoardingTitle3,
              ),
            ],
          ),
          // Skip button
          const OnBoardingSkip(),

          //   dot navigation smoothPageIndicator
          const OnBoardingDotNavigation(),

          //   circular button
         const  OnBoardingNextButton(),
        ],
      ),
    );
  }
}

