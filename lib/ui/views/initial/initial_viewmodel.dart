import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:to_do_app/app/app.router.dart';

import '../../../app/app.locator.dart';

class InitialViewModel extends BaseViewModel {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  final navService = locator<NavigationService>();

  onTap() => navService.navigateToReminderView();
  onPress() => navService.navigateToNewLabelView();
  onClick() => navService.navigateToArchiveView();
  onPush() => navService.navigateToTrashView();
  onPull() => navService.navigateToSettingsPage();
  onGot() => navService.navigateToNotesView();
  onFlot() => navService.navigateToAddLabelView();
}
