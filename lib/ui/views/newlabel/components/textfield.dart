import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:to_do_app/ui/views/initial/components/colors.dart';

import '../newlabelviewmodel.dart';

class For extends StackedHookView<NewLabelViewModel> {
  const For({super.key});
  @override
  Widget builder(BuildContext context, NewLabelViewModel model) {
    return Container(
      decoration: BoxDecoration(
        color: model.isDark ? AppColors.darkGrey : AppColors.lightWhite,
        border: const Border(
          top: BorderSide(color: AppColors.whiteColor),
          bottom: BorderSide(color: AppColors.whiteColor),
        ),
      ),
      child: const TextField(
        decoration: InputDecoration(
            labelText: 'Create new label',
            enabledBorder: InputBorder.none,
            labelStyle: TextStyle(color: AppColors.whiteColor)),
      ),
    );
  }
}
