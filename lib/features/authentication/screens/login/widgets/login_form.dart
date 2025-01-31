import 'package:ecommerce/features/authentication/screens/signUp/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            ///remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),

                ///forget password
                TextButton(
                    onPressed: () {},
                    child: const Text(TTexts.forgetPassword)),
              ],
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(TTexts.signIn)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () =>Get.to(const SignUpScreen()),
                  child: const Text(TTexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}