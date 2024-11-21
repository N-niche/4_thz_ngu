import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Căn chỉnh theo chiều dọc
        crossAxisAlignment:
            CrossAxisAlignment.start, // Căn chỉnh theo chiều ngang
        children: [
          Text("Header",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20), // Khoảng cách giữa các widget
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, // Căn chỉnh theo chiều ngang
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Button 1")),
              ElevatedButton(onPressed: () {}, child: Text("Button 2")),
            ],
          ),
          SizedBox(height: 20), // Khoảng cách giữa các widget
          Row(
            children: [
              Icon(Icons.star, size: 30),
              SizedBox(width: 10), // Khoảng cách giữa icon và text
              Text("This is a row with an icon and text"),
            ],
          ),
          SizedBox(height: 20), // Khoảng cách giữa các widget
          Column(
            children: [
              Text("Nested Column 1"),
              Text("Nested Column 2"),
            ],
          ),
        ],
      ),
    );
  }
}
