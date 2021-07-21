import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';

import 'package:codekeeper/screens/home/components/body.dart';
import 'package:codekeeper/models/theme_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final title = "code keeper";
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Provider.of<ThemeModel>(context, listen: false).toggleTheme();
              },
              icon: Icon(FeatherIcons.settings)),
          // Switch(
          //     value:
          //         Provider.of<ThemeModel>(context, listen: false).themeType ==
          //             ThemeType.Light,
          //     onChanged: (value) => {
          //           Provider.of<ThemeModel>(context, listen: false)
          //               .toggleTheme()
          //         })
        ],
      ),
      body: HomeScreenBody(),
    );
  }
}
