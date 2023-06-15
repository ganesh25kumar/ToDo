import '../database/model/titles.dart';

abstract class DbRepository {
  Future<bool> insertTitles(Titles titles);
  Future<Titles> getTitles(String titles);
  Future<bool> updateTitles(Titles model);
  Future<bool> isTitlesPresent(String? title);
}
