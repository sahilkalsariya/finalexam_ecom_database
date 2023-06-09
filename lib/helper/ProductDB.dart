import 'package:finalexam_ecom_database/model/CartProduct.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//
class DBHelper {
  DBHelper._();
  static final DBHelper dbHelper = DBHelper._();

  final String databName = "ProductsShop";
  final String tableName = "FinalProduct";
  final String ProId = "Id";
  final String ProName = "Name";
  final String ProPrice = "Price";

  Database? database;

  Future<void> initDB() async {
    String dbpath = await getDatabasesPath();
    String path = join(dbpath, databName);

    database = await openDatabase(path, version: 1,
        onCreate: (Database database, int version) async {
      await database
          .execute(
              "CREATE TABLE IF NOT EXISTS $tableName($ProId INTEGER PRIMARY KEY AUTOINCREMENT, $ProName TEXT, $ProPrice INTEGER);")
          .then((value) {
        print("==================================");
        print("TABLE CREATE ");
        print("==================================");
      });
    });
  }

  Future<void> ProductAdd({required CartProductM m}) async {
    await initDB();

    String query = "INSERT INTO $tableName($ProName,$ProPrice) VALUES(?, ?);";
    List a = [m.title, m.price];
    await database!.rawInsert(query, a);
  }

  Future<List> allData() async {
    await initDB();

    String query = "SELECT * FROM tableName;";

    List allProduct = await database!.rawQuery(query);

    return allProduct;
  }
}
