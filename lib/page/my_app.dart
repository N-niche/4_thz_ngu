import 'package:demo_ft_1/page/home/Sign_Up.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: SignUp(),
        debugShowCheckedModeBanner: false,
      );
}
