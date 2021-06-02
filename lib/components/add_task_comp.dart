import 'package:flutter/material.dart';

class AddTaskInput extends StatelessWidget {
  final TextEditingController toDoController;
  final Function()? addToDo;

  const AddTaskInput.add({
    required this.toDoController,
    this.addToDo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(23, 10, 35, 24),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: toDoController,
                  cursorColor: Theme.of(context).primaryColor,
                  maxLength: 20,
                  decoration: InputDecoration(
                    labelText: 'Nova Tarefa',
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    focusedBorder: new UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 19,
                  bottom: 3,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: addToDo,
                  child: Text(
                    'ADD',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
