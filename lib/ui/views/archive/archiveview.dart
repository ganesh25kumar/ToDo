import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../initial/components/colors.dart';
import 'archiveviewmodel.dart';

class ArchiveView extends StackedView<ArchiveViewModel> {
  const ArchiveView({super.key});
  @override
  ArchiveViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ArchiveViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Archive'),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.grid_view),
          ],
        ),
      ),
    );
  }
}
