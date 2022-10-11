import 'package:flutter/material.dart';
import 'package:i9development_web_page/src/page/init_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'I9',
        theme: ThemeData(
          useMaterial3: true,
          
          colorScheme:
              
              true ? ColorScheme.fromSeed(seedColor: Colors.blue) : null,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey.shade100,
        ),
        debugShowCheckedModeBanner: false,
        home:const InitPage());
  }
}