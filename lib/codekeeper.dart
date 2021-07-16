import 'package:flutter/material.dart';
import 'package:codekeeper/widgets/home.dart';

class CodeKeeperApp extends StatelessWidget {
  const CodeKeeperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Keeper App',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
