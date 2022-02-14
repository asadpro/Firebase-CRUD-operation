import 'package:firebase_crud_operation/update_student_page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatelessWidget {
  const ListStudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(width: 1.0),
              columnWidths: {
                1: FixedColumnWidth(140.0),
              },
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        height: 30.0,
                        color: Colors.cyan,
                        child: Center(
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 30.0,
                        color: Colors.cyan,
                        child: Center(
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 30.0,
                        color: Colors.cyan,
                        child: Center(
                          child: Text(
                            'Action',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Second table row
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'asad',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            'asadjani202@gmail.com',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: SizedBox(
                        height: 50.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UpdateStudentPage(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.amber,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
