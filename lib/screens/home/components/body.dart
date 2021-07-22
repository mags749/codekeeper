import 'package:flutter/material.dart';

import 'package:codekeeper/utils/constants.dart';
import 'package:codekeeper/widgets/block_button.dart';
import 'package:codekeeper/widgets/code_list_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlockButton(),
              BlockButton(),
            ],
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ckDefaultRadius * 2),
                      topRight: Radius.circular(ckDefaultRadius * 2),
                    ),
                  ),
                ),
                CodeListItem()
              ],
            ),
          )
        ],
      ),
    );
  }
}
