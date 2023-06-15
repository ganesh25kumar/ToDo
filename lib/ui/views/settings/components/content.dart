import 'package:flutter/material.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:to_do_app/ui/views/initial/components/colors.dart';

import '../settingsviewmodel.dart';

class Contents extends StackedHookView<SettingsPageViewModel> {
  const Contents({super.key});
  @override
  Widget builder(BuildContext context, SettingsPageViewModel model) {
    return Column(
      children: [
        const Text(
          'Display Options',
          style: TextStyle(color: AppColors.lightBlue),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Add new items to bottom',
              style: TextStyle(color: AppColors.whiteColor),
            ),
            Switch(
              activeColor: AppColors.darkIndigo,
              activeTrackColor: AppColors.lightIndigo,
              inactiveThumbColor: AppColors.lightGrey,
              inactiveTrackColor: AppColors.darkGrey,
              value: false,
              onChanged: (value) {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Move checked items to bottom',
              style: TextStyle(color: AppColors.whiteColor),
            ),
            Switch(
              activeColor: AppColors.darkIndigo,
              activeTrackColor: AppColors.lightIndigo,
              inactiveThumbColor: AppColors.lightGrey,
              inactiveTrackColor: AppColors.darkGrey,
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Display rich link previews',
              style: TextStyle(color: AppColors.whiteColor),
            ),
            Switch(
              activeColor: AppColors.darkIndigo,
              activeTrackColor: AppColors.lightIndigo,
              inactiveThumbColor: AppColors.lightGrey,
              inactiveTrackColor: AppColors.darkGrey,
              value: false,
              onChanged: (value) {},
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Theme', style: TextStyle(color: AppColors.whiteColor)),
            Text('Theme', style: TextStyle(color: AppColors.whiteColor)),
          ],
        ),
        const Text(
          'Reminder defaults',
          style: TextStyle(color: AppColors.lightBlue),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Morning', style: TextStyle(color: AppColors.whiteColor)),
            Text('8:00 AM', style: TextStyle(color: AppColors.whiteColor)),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Afternoon', style: TextStyle(color: AppColors.whiteColor)),
            Text('1:00 PM', style: TextStyle(color: AppColors.whiteColor)),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Evening', style: TextStyle(color: AppColors.whiteColor)),
            Text('6:00 PM', style: TextStyle(color: AppColors.whiteColor)),
          ],
        ),
        const Text(
          'Sharing',
          style: TextStyle(color: AppColors.lightBlue),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Enable sharing',
              style: TextStyle(color: AppColors.whiteColor),
            ),
            Switch(
              activeColor: AppColors.darkIndigo,
              activeTrackColor: AppColors.lightIndigo,
              inactiveThumbColor: AppColors.lightGrey,
              inactiveTrackColor: AppColors.darkGrey,
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
