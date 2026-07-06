import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/database.dart';
import 'package:todo/utils/my_dialog.dart';
import 'package:todo/utils/todotile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myBox= Hive.box("mybox");

  TodoDatabase db = TodoDatabase(); 
  final TextEditingController _mycontroller=TextEditingController();
  bool checkBoxChecked=false;

  void onSave(){
    setState(() {
      db.todo.add({"task":_mycontroller.text,"completed":false});
    });
    _mycontroller.clear();
    db.update();
    Navigator.of(context).pop();
  }

  void checkBoxChanged(bool? value,int index){
    setState(() {
      db.todo[index]["completed"]=value!;
    });
    db.update();
  }

  void createNewTask(){
    showDialog(
      context: context,
      builder: (context)=> MyDialog(
        controller: _mycontroller,
        onSave: onSave,
        onCancel: () {
          _mycontroller.clear();
          Navigator.of(context).pop();
        },
      )
    );
  }

  void deleteTask(int index){
    setState(() {
      db.todo.removeAt(index);
    });
    db.update();
  }

  @override
  void initState() {
    // TODO: implement initState
    if(myBox.get("TODOLIST")==null){
      db.createInitial();
    }
    else{
      db.loadData();
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("To Do"),
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=>createNewTask(),
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: db.todo.length,
        itemBuilder: ((context, index) => ToDoTile(
          taskName: db.todo[index]["task"],
          isTaskCompleted: db.todo[index]["completed"], 
          onChanged: (value)=> checkBoxChanged(value,index),
          deleteFunction: (context) => deleteTask(index),
          )
        ),
      )
    );
  }
}