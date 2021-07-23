import 'package:flutter/material.dart';
import 'package:codekeeper/utils/constants.dart';

class BlockButton extends StatelessWidget {
  const BlockButton({
    Key? key,
    required this.iconData,
  }) : super(key: key);
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: ckDefaultPadding * 3,
        bottom: ckDefaultPadding * 3,
        left: ckDefaultPadding,
        right: ckDefaultPadding,
      ),
      height: 128,
      width: 128,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(ckDefaultRadius)),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Icon(
          iconData,
          size: 64,
          color: Theme.of(context).textTheme.button!.color,
        ),
      ),
    );
  }
}
