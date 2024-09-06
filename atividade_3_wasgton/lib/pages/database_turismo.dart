import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseTurismo {
  static final _databaseName = "DataBaseTurismo.db";
  static final _databaseVersion = 1;

  static final table = 'places';

  static final columnId = 'id';
  static final columnName = 'name';
  static final columnLocation = 'location';
  static final columnReviews = 'reviews';

  // Singleton instance
  DatabaseTurismo._privateConstructor();
  static final DatabaseTurismo instance = DatabaseTurismo._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $columnName TEXT NOT NULL,
            $columnLocation TEXT NOT NULL,
            $columnReviews INTEGER NOT NULL
          )
          ''');
  }

  Future<int> insertPlace(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> queryAllPlaces() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  Future<int> updatePlace(int id, int reviews) async {
    Database? db = await instance.database;
    return await db!.update(
      table,
      {'reviews': reviews},
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
