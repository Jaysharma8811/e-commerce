import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class TSpacingStyle{
  TSpacingStyle._();
  static const EdgeInsetsGeometry paddingWithAppBarHeight=EdgeInsets.only(
    top: TSizes.appBarHeight,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );
}