import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../initial/components/colors.dart';
import 'notesview_model.dart';

class NotesView extends StackedView<NotesViewModel> {
  const NotesView({super.key});
  @override
  NotesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotesViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Search your notes'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view_outlined),
            ),
            const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
        body: const Column(
          children: [],
        ),
      ),
    );
  }
}
