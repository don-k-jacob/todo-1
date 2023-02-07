import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/main.dart';
import 'package:todo/models/tasktext.dart';

class TodoDatabase {
  //List tasks = [];
  // final _mybox = Hive.box('mybox');
  //load data
  void initial() {
    mybox.put("TODOLIST", tasks);
  }

  void loadData() async {
    print("entered load");
    print("init inside loadata" + tasks.toString());

    tasks = await mybox.get("TODOLIST");
    // print(tasks.toMap().toString() + "tasks");
  }
  // update data

  void updateDatabase() {
    mybox.put("TODOLIST", tasks);
    tasks = mybox.get("TODOLIST");

    // updatelist();
    //Navigator()
    print("init inside updatedatabase" + tasks.toString());
  }
}
