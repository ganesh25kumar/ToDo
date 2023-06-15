import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../initial/components/colors.dart';
import 'addlabelviewmodel.dart';

class AddLabelView extends StackedView<AddLabelViewModel> {
  const AddLabelView({super.key});
  @override
  AddLabelViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddLabelViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
          backgroundColor:
              viewModel.isDark ? AppColors.darkGrey : AppColors.lightWhite,
          appBar: AppBar(
            elevation: 0,
            backgroundColor:
                viewModel.isDark ? AppColors.darkGrey : AppColors.lightWhite,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.push_pin_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.archive_outlined),
              ),
            ],
          ),
          body: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Title',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 40),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    labelStyle: TextStyle(
                      height: 50,
                      color: AppColors.lightWhite,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Note',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 40),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    labelStyle: TextStyle(
                      color: AppColors.lightWhite,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
