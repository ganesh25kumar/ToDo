import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:to_do_app/ui/views/initial/components/colors.dart';
import 'package:to_do_app/ui/views/initial/components/drawer.dart';

import '../../configure/size_config.dart';
import 'initial_viewmodel.dart';

class InitialView extends StackedView<InitialViewModel> {
  const InitialView({super.key});
  @override
  InitialViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InitialViewModel();
  @override
  Widget builder(context, viewModel, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            viewModel.isDark ? AppColors.blackColor : AppColors.whiteColor,
        appBar: AppBar(
          toolbarHeight: 5.3 * SizeConfig.heightMultiplier!,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          title: const Text('Search your notes'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view_outlined),
            ),
            Padding(
              padding: EdgeInsets.only(right: 6 * SizeConfig.widthMultiplier!),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 18,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
        drawer: const Draw(),
        body: const Column(
          children: [],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
        floatingActionButton: FloatingActionButton(
          foregroundColor:
              viewModel.isDark ? AppColors.whiteColor : AppColors.blackColor,
          backgroundColor:
              viewModel.isDark ? AppColors.lightGrey : AppColors.lightWhite,
          onPressed: () {
            viewModel.onFlot();
          },
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
              label: 'draw',
              icon: Icon(Icons.brush),
            ),
            BottomNavigationBarItem(
              label: 'image',
              icon: Icon(Icons.image_outlined),
            )
          ],
        ),
      ),
    );
  }
}
