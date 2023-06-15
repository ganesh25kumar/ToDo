import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:to_do_app/ui/views/trash/trashviewmodel.dart';

import '../initial/components/colors.dart';

class TrashView extends StackedView<TrashViewModel> {
  const TrashView({super.key});
  @override
  TrashViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TrashViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Trash'),
        ),
      ),
    );
  }
}
