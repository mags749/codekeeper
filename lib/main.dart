// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:codekeeper/codekeeper.dart';
import 'package:codekeeper/models/theme_model.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeModel>(
          create: (BuildContext context) => ThemeModel())
    ],
    child: CodeKeeperApp(),
  ));
}
