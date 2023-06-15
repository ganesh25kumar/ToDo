import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../initial/components/colors.dart';
import 'components/textfield.dart';
import 'newlabelviewmodel.dart';

class NewLabelView extends StackedView<NewLabelViewModel> {
  const NewLabelView({super.key});
  @override
  NewLabelViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NewLabelViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Edit labels'),
        ),
        body: const Column(
          children: [
            For(),
          ],
        ),
      ),
    );
  }
}
