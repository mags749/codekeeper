import 'package:codekeeper/enums/theme_type.dart';
import 'package:codekeeper/models/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final title = "code keeper";
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(title: Text(title)),
          expandedHeight: height * 0.45,
          collapsedHeight: height * 0.10,
          actions: <Widget>[
            Switch(
                value:
                    Provider.of<ThemeModel>(context, listen: false).themeType ==
                        ThemeType.Light,
                onChanged: (value) => {
                      Provider.of<ThemeModel>(context, listen: false)
                          .toggleTheme()
                    })
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                      title: Text(
                    'Item #$index',
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
              childCount: 100),
        )
      ],
    ));
  }
}
