import 'package:codekeeper/utils/constants.dart';
import 'package:flutter/material.dart';

class CodeListItem extends StatelessWidget {
  const CodeListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(
          horizontal: ckDefaultPadding, vertical: ckDefaultPadding / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ckDefaultRadius),
          color: Theme.of(context).accentColor),
    );
  }
}
