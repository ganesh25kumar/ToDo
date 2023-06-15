import 'package:stacked/stacked.dart';

class ReminderViewModel extends BaseViewModel {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
