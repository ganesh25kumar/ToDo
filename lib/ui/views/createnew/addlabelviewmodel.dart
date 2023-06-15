import 'package:stacked/stacked.dart';

class AddLabelViewModel extends BaseViewModel {
  bool isDark = true;

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
