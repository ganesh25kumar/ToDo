import 'package:stacked/stacked.dart';

class SettingsPageViewModel extends BaseViewModel {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
