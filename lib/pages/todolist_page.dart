// import 'package:desafio1_ioasys_flutter/components/add_task_comp.dart';
// import 'package:desafio1_ioasys_flutter/models/task_model.dart';
// import 'package:flutter/material.dart';

// import '../components/appBar_comp.dart';
// import '../components/drawer_comp.dart';

// class ToDoListPage extends StatefulWidget {
//   @override
//   _ToDoListPageState createState() => _ToDoListPageState();
// }

// class _ToDoListPageState extends State<ToDoListPage> {
//   final TextEditingController _toDoController = TextEditingController();
//   List<TaskModel> _toDoList = [];

//   _addToDo() {
//     setState(() {
//       var newTask = TaskModel(
//         text: _toDoController.text,
//         completed: false,
//       );

//       _toDoList.add(newTask);

//       for (var task in _toDoList) {
//         print(task.text);
//       }

//       _toDoController.text = '';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: CustomDrawer(),
//       appBar: CustomAppBar('Lista de Tarefas', false),
//       body: Container(
//         child: Column(
//           children: [
//             AddTaskInput.add(
//               toDoController: _toDoController,
//               addToDo: _addToDo,
//             ),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: _toDoList.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Dismissible(
//                       key: Key(
//                         DateTime.now().millisecondsSinceEpoch.toString(),
//                       ),
//                       background: Container(
//                         alignment: Alignment.centerLeft,
//                         color: Colors.grey,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 26),
//                           child: Icon(
//                             Icons.delete,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       child: CheckboxListTile(
//                         activeColor: Theme.of(context).primaryColor,
//                         title: Text(
//                           _toDoList[index].text,
//                           style:
//                               TextStyle(color: Theme.of(context).accentColor),
//                         ),
//                         value: _toDoList[index].completed,
//                         secondary: Icon(
//                           _toDoList[index].completed
//                               ? Icons.check_circle
//                               : Icons.error,
//                           color: Theme.of(context).primaryColor,
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             _toDoList[index].completed = value ?? false;
//                           });
//                         },
//                       ),
//                       onDismissed: (direction) => _toDoList.removeAt(index),
//                     );
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
