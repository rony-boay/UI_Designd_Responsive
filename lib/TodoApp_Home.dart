import 'package:firstap_codelab_1/DialogBox_Todoapp.dart';
import 'package:firstap_codelab_1/TodoApp.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
// ignore: unused_import
// import 'dart:ffi';

class TodoAppHome extends StatefulWidget {
  const TodoAppHome({Key? key}) : super(key: key);

  @override
  State<TodoAppHome> createState() => _TodoAppHomeState();
}

class _TodoAppHomeState extends State<TodoAppHome> {
  final _mybox = Hive.box('Mybox');
  @override
  void initState() {
    if (_mybox.get('KEY') == null) {
      db.initialdata();
    } else {
      db.loaddata();
    }
    super.initState();
  }

  final _controller = TextEditingController();

  TodoDatabase db = TodoDatabase();

  void onChangedBox(int index, bool? value) {
    setState(
      () {
        db.todolist[index][1] = !db.todolist[index][1];
      },
    );
    db.updatedata();
  }

  void savenewtask() {
    setState(() {
      db.todolist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updatedata();
  }

  void canceltextfield() {
    _controller.clear();
    Navigator.of(context).pop();
  }

  void addNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onsave: savenewtask,
          oncancel: canceltextfield,
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      db.todolist.removeAt(index);
    });
    db.updatedata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[500],
        title: Center(child: Text('ToDo App')),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: addNewTask,
        child: Icon(Icons.add),
      ),
      body: Container(
        color: Colors.yellow[200],
        child: ListView.builder(
          itemCount: db.todolist.length,
          itemBuilder: (context, index) {
            return TodoApp(
              taskName: db.todolist[index][0],
              tCompleted: db.todolist[index][1],
              onChanged: (value) {
                onChangedBox(index, value);
              },
              deleteFunction: (context) => deleteTask(index),
            );
          },
        ),
      ),
    );
  }
}

/* ................. button class .............................. */

// ignore: must_be_immutable
class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Mybutton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.all(16),
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}

class TodoDatabase {
  List todolist = [];

  final _mybox = Hive.box('Mybox');

  void initialdata() {
    List toDolist = [
      ['Work', false],
      ['Sleep', false],
    ];
  }

  void loaddata() {
    todolist = _mybox.get('KEY');
  }

  void updatedata() {
    _mybox.put('KEY', todolist);
  }
}
