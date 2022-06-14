import 'package:dartz/dartz.dart';
import 'package:sardunya/d_domain/core/errors.dart';
import 'package:sardunya/d_domain/poke/notification/i_notification_repository.dart';
import 'package:sardunya/d_domain/poke/notification/notification_failure.dart';
import 'package:sardunya/d_domain/poke/notification/notification_object.dart';
import 'package:sardunya/e_infrastracture/notification/notification_dto.dart';
import 'package:sardunya/e_infrastracture/notification/notification_repository.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

 // extension but workin like a data repository 
 // for handle to logicall issue about to Sqflite
extension NotificationSqflExtention on INotificationRepository{

  static final NotificationRepository instance = NotificationRepository.instance;
  static Database? _database;
  static const String _dbName = 'NotificationSqflDB';
  Future<Database> get database async {
    _database = _database ?? await _initDB(_dbName);
    return _database!;
  }
 
  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    const idType = 'INTEGER NOT NULL';
    const stringType = 'STRING';
    const intType = 'INTEGER';
    await db.execute(
        '''CREATE TABLE $tableNotification (
          ${NotificationFields.databaseId} $idType ,
          ${NotificationFields.uniqueId} $stringType, 
          ${NotificationFields.time} $intType,
          ${NotificationFields.title} $stringType, 
          ${NotificationFields.content} $stringType )''');
  }

  Future<Either<NotificationFailure, Unit>> sqflCreate(
      NotificationObject notification) async {
    final notificationDto = NotificationDto.fronDomain(notification);
    try {
      final db = await instance.database;
      int id = await db.insert(tableNotification, notificationDto.toJson());
      if (id != 0) {
        return right(unit);
      } else {
        return left(const NotificationFailure.dbInsertFail());
      }
    } catch (e) {
      throw UnexpectedDatabaseError();
    }
  }
  
  Future<Either<NotificationFailure, Unit>> sqflDelete(int id) async {
    try {
      final db = await instance.database;
      int count = await db.delete(tableNotification,
          where: '${NotificationFields.databaseId} = ?', whereArgs: [id]);
      if (count != 0) {
        return right(unit);
      } else {
        return left(const NotificationFailure.dbDeleteFail());
      }
    } catch (e) {
      throw UnexpectedDatabaseError();
    }
  }

  Future<Either<NotificationFailure, NotificationObject>> sqflRead(int id) async {
    try {
      final db = await instance.database;
      var maps = await db.query(tableNotification,
          columns: NotificationFields.values,
          where: '${NotificationFields.databaseId} = ?',
          whereArgs: [id]);
      if (maps.isNotEmpty) {
        NotificationDto notificationDto = NotificationDto.fromJson(maps.first);
        NotificationObject notificationObject = notificationDto.toDomain();
        return right(notificationObject);
      } else {
        return left(const NotificationFailure.dbReadFail());
      }
    } catch (e) {
      throw UnexpectedDatabaseError();
    }
  }
  
  Future<Either<NotificationFailure, Unit>> sqflUpdate(
      NotificationObject notification) async {
    final notificationDto = NotificationDto.fronDomain(notification);
    try {
      final db = await instance.database;
      int id = await db.update(tableNotification, notificationDto.toJson(),
          where: '${NotificationFields.databaseId} = ?',
          whereArgs: [notification.databaseId]);
      if (id != 0) {
        return right(unit);
      } else {
        return left(const NotificationFailure.dbUpdateFail());
      }
    } catch (e) {
      throw UnexpectedDatabaseError();
    }
  }
}