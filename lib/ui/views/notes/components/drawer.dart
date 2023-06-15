import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:to_do_app/ui/views/initial/components/styles.dart';

import '../../initial/components/colors.dart';
import '../../initial/initial_viewmodel.dart';

class Draw extends StackedHookView<InitialViewModel> {
  const Draw({super.key});
  @override
  Widget builder(BuildContext context, InitialViewModel model) {
    return Container(
      decoration: BoxDecoration(
          color: model.isDark ? AppColors.darkGrey : AppColors.lightWhite),
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: model.isDark ? AppColors.blackColor : AppColors.whiteColor,
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: model.isDark
                        ? AppColors.blackColor
                        : AppColors.whiteColor),
                child: Text(
                  'Google Keep',
                  style: AppStyles.menuStyle,
                ),
              ),
              ListTile(
                hoverColor: AppColors.lightBlue,
                enabled: true,
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: const Icon(Icons.lightbulb_outline_rounded),
                title: const Text('Notes'),
                onTap: () => model.onGot(),
              ),
              ListTile(
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: const Icon(Icons.notifications_none_sharp),
                title: const Text('Remainders'),
                onTap: () {
                  model.onTap();
                },
              ),
              ListTile(
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: const Icon(Icons.add),
                title: const Text('Create new label'),
                onTap: () {
                  model.onPress();
                },
              ),
              ListTile(
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: const Icon(Icons.archive_outlined),
                title: const Text('Archive'),
                onTap: () => model.onClick(),
              ),
              ListTile(
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: const Icon(Icons.delete),
                title: const Text('Trash'),
                onTap: () => model.onPush(),
              ),
              ListTile(
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () => model.onPull(),
              ),
              const ListTile(
                iconColor: AppColors.bluish,
                textColor: AppColors.bluish,
                leading: Icon(Icons.help_outline_rounded),
                title: Text('Help & feedback'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
