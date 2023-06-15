import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/ui/views/initial/components/colors.dart';

import '../../../configure/size_config.dart';

class AppStyles {
  static TextStyle barStyle = GoogleFonts.poppins(
    fontSize: 2.5 * SizeConfig.textMultiplier!,
    fontWeight: FontWeight.w500,
  );
  static TextStyle contentStyle = GoogleFonts.poppins(
    fontSize: 2.5 * SizeConfig.textMultiplier!,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );
  static TextStyle menuStyle = GoogleFonts.poppins(
      fontSize: 2.6 * SizeConfig.textMultiplier!,
      fontWeight: FontWeight.w400,
      color: AppColors.whiteColor);

  static TextStyle menuListStyle = GoogleFonts.poppins(
    fontSize: 2.5 * SizeConfig.textMultiplier!,
    fontWeight: FontWeight.w500,
    color: AppColors.bluish,
  );
  static TextStyle searchStyle = GoogleFonts.poppins(
    fontSize: 1.8 * SizeConfig.textMultiplier!,
    color: AppColors.whiteColor,
  );
}
