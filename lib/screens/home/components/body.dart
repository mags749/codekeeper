import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              GestureDetector(
                child: BlockButton(iconData: CupertinoIcons.qrcode_viewfinder),
                onTap: scanCode,
              ),
              GestureDetector(
                child: BlockButton(iconData: CupertinoIcons.qrcode),
                onTap: () {
                  print('Generate barcode tapped');
                },
              )
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

  Future scanCode() async {
    try {
      ScanResult brCode = await BarcodeScanner.scan();
      print(brCode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        print('The user did not grant the camera permission!');
      } else {
        print('Platform exception: $e');
      }
    } on FormatException catch (e) {
      print('Format exception: $e');
    } catch (e) {
      print('Unknown exception: $e');
    }
  }
}
