import 'package:flutter/material.dart';
import 'package:codekeeper/utils/constants.dart';

class BlockButton extends StatelessWidget {
  const BlockButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
            Icons.qr_code,
            size: 64,
            color: Theme.of(context).textTheme.button!.color,
          ),
        ),
      ),
      onTap: () {
        print('Tapped');
      },
    );
  }
}
