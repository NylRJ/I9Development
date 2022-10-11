import 'package:flutter/material.dart';

import '../compoments/header.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
             children:  [
               Stack(
                children:  [
                   Row(
                    children: [
                      Container(),
                    ],
                   ),
                   const Header(),
                ],
               ),
             ],
          ),
        ),
      ),
    );
  }
}