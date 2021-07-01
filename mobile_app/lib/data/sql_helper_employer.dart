import 'dart:io';

import 'package:mobile_app/models/employer.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelperEmployer {
  final String tableName = "employer";
  final String colId = 'id';
  final String colFirst_name = 'first_name';
  final String colLast_name = 'last_name';
  final String colOccupation = 'occupation';
  final String colGender = 'gender';
  final String colEmail = 'email';
  final int colPhone = 0;
  final String colCountry = 'country';
  final String colCity = 'city';
  final String colBusiness_Name = 'business_name';
  final String colRole = 'role';
  final String colAddress = 'address';
  final String colPassword = 'password';

  static Database? _db;
  final int _version = 1;
  static SqlHelperEmployer _dbHelper = SqlHelperEmployer._internal();

  SqlHelperEmployer._internal();

  factory SqlHelperEmployer() {
    return _dbHelper;
  }
  Future<Database?> get db async {
    if (_db == null) {
      _db = await init();
    }
    return _db;
  }

  Future init() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String dbPath = join(dir.path, 'myIntern.db');
    _db = await openDatabase(dbPath, version: _version, onCreate: _createDb);
  }

  Future _createDb(Database db, int version) async {
    String query =
        'CREATE TABLE $tableName ($colId INTEGER PRIMARY KEY, $colFirst_name TEXT, $colLast_name TEXT, $colOccupation TEXT,$colEmail TEXT, $colPhone INTEGER, $colCountry TEXT, $colCity TEXT, $colBusiness_Name TEXT, $colRole TEXT, $colAddress TEXT, $colPassword TEXT)';
    await db.execute(query);
  }

  Future<int?> insertTodo(Employer employer) async {
    Database? db = await this.db;
    var result = await db?.insert(tableName, employer.toMap());
    return result;
  }

  Future<List?> getEmployer() async {
    Database? db = await this.db;
    var result =
        await db?.rawQuery("SELECT * FROM $tableName order by $colId ASC");
    return result;
  }

  Future<int?> getCount() async {
    Database? db = await this.db;
    var result = Sqflite.firstIntValue(
        await db!.rawQuery("select count (*) from $tableName"));
    return result;
  }

  Future<int> updateTodo(Employer employer) async {
    var db = await this.db;
    var result = await db!.update(tableName, employer.toMap(),
        where: "$colId = ?", whereArgs: [employer.id]);
    return result;
  }

  Future<int> deleteEmployer(int id) async {
    int result;
    var db = await this.db;
    result = await db!.rawDelete('DELETE FROM $tableName WHERE $colId = $id');
    return result;
  }
}
