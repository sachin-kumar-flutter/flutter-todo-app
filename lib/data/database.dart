import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{
  final myBox= Hive.box("mybox");
  List<Map<String,dynamic>> todo=[];

  void createInitial(){
    todo=[{"task":"Wake up","completed":false}];
  }

  void loadData(){
    todo=myBox.get("TODOLIST");
  }

  void update(){
    myBox.put("TODOLIST",todo);
  }

}