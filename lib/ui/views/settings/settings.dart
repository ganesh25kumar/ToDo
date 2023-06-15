import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:to_do_app/ui/views/settings/settingsviewmodel.dart';

import '../initial/components/colors.dart';
import 'components/content.dart';

class SettingsPage extends StackedView<SettingsPageViewModel> {
  const SettingsPage({super.key});
  @override
  SettingsPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsPageViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Settings'),
        ),
        body: const Column(
          children: [Contents()],
        ),
      ),
    );
  }
}
