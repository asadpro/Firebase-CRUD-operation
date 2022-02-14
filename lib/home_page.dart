import 'package:firebase_crud_operation/add_student_page.dart';
import 'package:firebase_crud_operation/list_student_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Flutter Firestore CRUD'),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddStudentPage()));
                  },
                  child: Text('Add'),
                )
              ],
            ),
          ),
          body: ListStudentPage()),
    );
  }
}
