import 'package:stacked/stacked.dart';

class NotesViewModel extends BaseViewModel {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
