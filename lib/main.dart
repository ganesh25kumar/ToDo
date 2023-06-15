import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_app/app/app.bottomsheets.dart';
import 'package:to_do_app/app/app.dialogs.dart';
import 'package:to_do_app/app/app.locator.dart';
import 'package:to_do_app/app/app.router.dart';
import 'package:to_do_app/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:to_do_app/ui/configure/size_config.dart';
import 'package:to_do_app/ui/database/database_helper.dart';

Future<void> main() async {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  WidgetsFlutterBinding.ensureInitialized();
  DatabaseHelper databaseHelper = DatabaseHelper();
  Database? database = await databaseHelper.database;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'To Do ',
            theme: Theme.of(context).copyWith(
              primaryColor: kcBackgroundColor,
              focusColor: kcPrimaryColor,
              textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: Colors.black,
                  ),
            ),
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
          );
        },
      );
    });
  }
}
