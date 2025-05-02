import 'package:flutter/material.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

 class _HomePageState extends State<HomePage> {
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index] [1] = !toDoList[index] [1];
    });
  }




  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('TO DO'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
 }