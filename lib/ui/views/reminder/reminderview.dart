import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:to_do_app/ui/views/initial/components/colors.dart';
import 'package:to_do_app/ui/views/reminder/reminderviewmodel.dart';

import '../../configure/size_config.dart';
import 'components/content.dart';

class ReminderView extends StackedView<ReminderViewModel> {
  const ReminderView({super.key});
  @override
  ReminderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReminderViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Reminders'),
          elevation: null,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.grid_view))
          ],
        ),
        body: const Column(
          children: [
            Content(),
          ],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
        floatingActionButton: FloatingActionButton(
          foregroundColor:
              viewModel.isDark ? AppColors.whiteColor : AppColors.blackColor,
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 10 * SizeConfig.imageSizeMultiplier!,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:
              viewModel.isDark ? AppColors.darkGrey : AppColors.lightWhite,
          items: const [
            BottomNavigationBarItem(
              label: 'check',
              icon: Icon(Icons.check_box_outlined),
            ),
            BottomNavigationBarItem(
              label: 'mic',
              icon: Icon(Icons.mic),
            ),
            BottomNavigationBarItem(
              label: 'draw',
              icon: Icon(Icons.image_outlined),
            )
          ],
        ),
      ),
    );
  }
}
