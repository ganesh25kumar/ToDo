import 'package:sqflite/sqflite.dart';
import 'package:to_do_app/app/app.locator.dart';
import 'package:to_do_app/ui/database/model/titles.dart';
import 'package:to_do_app/ui/database/tables.dart';
import '../repository/db_repository.dart';
import 'database_helper.dart';

class DbRepositoryImpl extends DbRepository {
  final DatabaseHelper dbProvider = locator<DatabaseHelper>();
  late Database db;

  @override
  Future<bool> isTitlesPresent(String? title) async {
    db = (db.database);
    final result = await db.rawQuery(
        'SELECT ${TitlesFields.title} FROM ${Tables.titles} WHERE ${TitlesFields.title}=?',
        [title]);
    if (result.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> insertTitles(Titles titles) async {
    db = (await dbProvider.database)!;
    final result = await db.insert(Tables.titles, titles.toMap());
    if (result > 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<Titles> getTitles(String titles) async {
    db = (await dbProvider.database)!;
    var maps = await db.query(Tables.titles,
        where: '${TitlesFields.title}=?', whereArgs: [titles]);
    return Titles.fromMap(maps.first);
  }

  @override
  Future<bool> updateTitles(Titles model) async {
    db = (await dbProvider.database)!;
    var complaintModel = {
      TitlesFields.title: model.title,
      TitlesFields.content: model.content,
      TitlesFields.images: model.images,
    };
    final result = await db.update(Tables.titles, complaintModel,
        where: '${TitlesFields.title}=?', whereArgs: [model.title]);
    if (result > 0) {
      return true;
    } else {
      return false;
    }
  }

  Future<int> delete(Titles model) async {
    final db = (await dbProvider.database)!;

    return await db.delete(
      TitlesFields.title,
      where: '${TitlesFields.title} = ?',
      whereArgs: [model.title],
    );
  }
}
