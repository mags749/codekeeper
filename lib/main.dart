import 'package:codekeeper/models/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:codekeeper/codekeeper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeModel>(
          create: (BuildContext context) => ThemeModel())
    ],
    child: CodeKeeperApp(),
  ));
}
