import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:codekeeper/codekeeper.dart';
import 'package:codekeeper/models/theme_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeModel>(
          create: (BuildContext context) => ThemeModel())
    ],
    child: CodeKeeperApp(),
  ));
}
