import 'package:flutter/material.dart';

class AddStudentPage extends StatefulWidget {
  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey = GlobalKey<FormState>();

//This method will dispose all the controllers and their containing values.
  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

//These controller will take value from the TextField
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  String name = '';

  String email = '';

  String password = '';

  void clearText() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  void addUser() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Student Page'),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    child: TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter your name',
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(color: Colors.redAccent),
                      ),
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter name';
                        }

                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(color: Colors.redAccent),
                      ),
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!value.contains('@')) {
                          return 'Please enter valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(color: Colors.redAccent),
                      ),
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
/*currentState come from the FormState class which is defined at the time of creating formField. FormState 
contains the validate method which checks the value to be correct if not then it will return the corresponding
message as shown below.*/
                          if (_formKey.currentState!.validate()) {
                            name = nameController.text;
                            email = emailController.text;
                            password = passwordController.text;
                          } else if (nameController.text.length < 3 ||
                              !emailController.text.contains('@')) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Input data are wrong'),
                              ),
                            );
                          }
                          addUser();
                          clearText();
                        },
                        child: Text('Register'),
                      ),
                      ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blueGrey),
                        onPressed: () {
                          if (name.isEmpty &&
                              email.isEmpty &&
                              password.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Fields are already has been empty')),
                            );
                          }
                          clearText();
                        },
                        child: Text('Reset'),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
