import 'package:stacked/stacked.dart';
import 'package:to_do_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:to_do_app/ui/database/database_helper.dart';
import 'package:to_do_app/ui/dialogs/info_alert/info_alert_dialog.dart';

import 'package:to_do_app/ui/views/initial/initial_view.dart';

import 'package:to_do_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/database/db_rep_impl.dart';

import '../ui/repository/db_repository.dart';
import '../ui/views/archive/archiveview.dart';
import '../ui/views/createnew/addlabelview.dart';
import '../ui/views/newlabel/newlabelview.dart';
import '../ui/views/notes/notesview.dart';
import '../ui/views/reminder/reminderview.dart';
import '../ui/views/settings/settings.dart';
import '../ui/views/trash/trashview.dart';

// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: InitialView),
    MaterialRoute(page: StartupView),
    CustomRoute(
        page: ReminderView,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(
        page: NewLabelView,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(
        page: ArchiveView,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(
        page: TrashView,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(
        page: SettingsPage,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    CustomRoute(
        page: NotesView,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade),
    CustomRoute(
        page: AddLabelView,
        transitionsBuilder: TransitionsBuilders.slideBottom),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DatabaseHelper),
    LazySingleton(classType: DbRepositoryImpl, asType: DbRepository),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
