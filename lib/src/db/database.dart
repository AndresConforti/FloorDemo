import 'package:sqflite/sqflite.dart' as sqflite;

import '../utils/db_imports.dart';
import '../utils/enums.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Task])
@TypeConverters([DateTimeConverter, TaskTypeConverter])
abstract class FlutterDatabase extends FloorDatabase {
  TaskDao get taskDao;
}
