import 'package:demo_ft_1/Sign_Up-screen/SignUpScreen3.dart';
import 'package:flutter/material.dart';

class Signupscreen2 extends StatefulWidget {
  @override
  Signupscreen2 createState() => Signupscreen2();
}

  class _ButtonSelectionExampleState {
  String selectedButton = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text("Sign Up"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Create an account",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Please complete your profile",
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Full name"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Full name cannot be empty";
                              }
                              return null; // Trả về null nếu hợp lệ
                            },
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Date of Birth"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Date of Birth cannot be empty";
                              }
                              return null;
                            }, // Trả về null nếu hợp lệ
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: "Phone Number"),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Phone Number cannot be empty";
                              }
                              if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                                return "Phone Number must be numeric";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: "Username"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedButton =
                                          "Student"; // Đặt trạng thái thành "Student"
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedButton == "Student" ? Colors.green : Colors.blue,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpScreen3()),
                                    );
                                  },
                                  child: Text("Teacher"),
                                ),
                              ]),
                        ])))));
  }
}

