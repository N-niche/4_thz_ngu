import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // "Sign Up" ở góc trái trên
              Positioned(
                top: 0, // Vị trí từ trên xuống
                left: 50, // Vị trí từ trái sang
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // "Log In" ở góc phải trên
              Positioned(
                top: 0, // Vị trí từ trên xuống
                right: 50, // Vị trí từ phải sang
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
