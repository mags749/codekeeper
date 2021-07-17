import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:codekeeper/models/theme_model.dart';
import 'package:codekeeper/screens/home.dart';

class CodeKeeperApp extends StatelessWidget {
  const CodeKeeperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Keeper App',
      theme: Provider.of<ThemeModel>(context).currentTheme,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
