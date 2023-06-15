import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import 'package:to_do_app/ui/views/initial/components/colors.dart';

import '../../../configure/size_config.dart';
import '../reminderviewmodel.dart';

class Content extends StackedHookView<ReminderViewModel> {
  const Content({super.key});
  @override
  Widget builder(BuildContext context, ReminderViewModel model) {
    return Container(
      height: 50 * SizeConfig.heightMultiplier!,
      width: 50 * SizeConfig.widthMultiplier!,
      color: AppColors.bluish,
    );
  }
}
