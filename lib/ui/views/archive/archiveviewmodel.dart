import 'package:stacked/stacked.dart';

class ArchiveViewModel extends BaseViewModel {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
