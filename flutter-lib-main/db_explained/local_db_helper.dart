import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

// make a common class for database where we can do all database related work

class DBHelper {
  /*
  singleton - design pattern in software development that ensures a class has only one instance throughout the lifecycle of an application
  and provides a global point of access to that instance.

  we use singleton in db because we dont want to create multiple instances of
  database (we use only one common db so no point in creating multiple instances of db)
  */

  DBHelper._(); // ._ means constructor is privatised (cant create its instance outside this class)

  static final DBHelper getInstance = DBHelper._();
  // table note
  static final String TABLE_NOTE = "note";
  static final String COLUM_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESC = "desc";

  Database? myDB; // database obj

  // db Open (path -> if exist then open else create db)

  // check if database is null, if it isnt then open database

  Future<Database> getDB() async {
    // if (myDB != null) {
    //   return myDB!;
    // } else {
    //   myDB = await openDB();
    //   return myDB!;
    // }
    myDB ??= await openDB();
    return myDB!; // does the same thing as above
  }

  // openDB opens the database (path of the db); we'll store db in the dir
  Future<Database> openDB() async {
    Directory appDir =
        await getApplicationCacheDirectory(); //Path to a directory where the application may place data that is user-generated
    String dbPath = join(appDir.path,
        "noteDB.db"); // joins single path to another path (given args)

    // Open the database at a given path :
    return await openDatabase(dbPath, onCreate: (db, version) {
      // create all the tables here
      db.execute(// execute db
          "create table $TABLE_NOTE ($COLUM_NOTE_SNO integer primary key autoincrement,  $COLUMN_NOTE_TITLE text,$COLUMN_NOTE_DESC text)");
    }, version: 1);
    // version of db schemas(structure)
  }

  // all queries

  // insertion
  Future<bool> addNote(
      {required String myTitle, required String myDesc}) async {
    var db = await getDB();
    int rowsAffected = await db.insert(
        // inserted new data in db
        TABLE_NOTE,
        {COLUMN_NOTE_TITLE: myTitle, COLUMN_NOTE_DESC: myDesc});

    return rowsAffected > 0; // to check if the data is sent to the db
  }
}
