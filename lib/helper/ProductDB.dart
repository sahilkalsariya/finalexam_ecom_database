import 'package:finalexam_ecom_database/model/ProductData.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{
  DBHelper._();
  DBHelper dbHelper = DBHelper._();

  final String databName = "ProductsShop";
  final String tableName = "FinalProduct";
  final String ProId = "Id";
  final String ProName = "Name";
  final String ProPrice = "Price";
  final String ProImage = "Image";

  Database? database;

  Future<void> initDB() async {
    String dbpath = await getDatabasesPath();
    String path = join(dbpath, databName);

    database = await openDatabase(path, version: 1,
        onCreate: (Database database, int version) async {
          await database.execute(
              "CREATE TABLE IF NOT EXISTS $tableName($ProId INTEGER PRIMARY KEY AUTOINCREMENT, $ProName TEXT, $ProPrice INTEGER, $ProImage BLOB);");
        });
  }


  Future<void> ProductAdd() async {
    await initDB();

  }

}