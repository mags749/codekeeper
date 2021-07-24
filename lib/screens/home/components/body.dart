import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:codekeeper/utils/constants.dart';
import 'package:codekeeper/utils/theme.dart';
import 'package:codekeeper/widgets/block_button.dart';
import 'package:codekeeper/widgets/code_list_item.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  String barCodeString = '';

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
                onTap: () => scanCode(context),
              ),
              GestureDetector(
                child: BlockButton(iconData: CupertinoIcons.qrcode),
                onTap: () {
                  setState(() {
                    if (this.barCodeString == '') {
                      setState(() {
                        this.barCodeString = 'Hello';
                      });
                    } else
                      setState(() {
                        this.barCodeString = '';
                      });
                  });
                },
              )
            ],
          ),
          Visibility(
            visible: barCodeString != '',
            child: Container(
              margin: EdgeInsets.only(
                left: ckDefaultPadding,
                bottom: ckDefaultPadding * 2,
                right: ckDefaultPadding,
              ),
              padding: EdgeInsets.all(ckDefaultPadding),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(ckDefaultRadius),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(barCodeString),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Save'),
                        style: OutlinedButton.styleFrom(
                          primary: Theme.of(context).accentColor,
                          minimumSize: Size(88, 36),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            this.barCodeString = '';
                          });
                        },
                        child: Text('Cancel'),
                        style: OutlinedButton.styleFrom(
                          primary: Theme.of(context).errorColor,
                          minimumSize: Size(88, 36),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
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

  Future showMessage(String msg, BuildContext context) {
    return Fluttertoast.showToast(
      backgroundColor: Theme.of(context).errorColor,
      gravity: ToastGravity.BOTTOM,
      msg: msg,
      textColor: darkTextStyle.color,
    );
  }

  Future scanCode(BuildContext context) async {
    try {
      ScanResult barcode = await BarcodeScanner.scan();
      setState(() => this.barCodeString = barcode.toString());
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        showMessage(
            "Camera access is disabled. Please enable the camera access to use the app",
            context);
      } else {
        showMessage("Unable to access camera.", context);
        debugPrint('Platform Exception :: $e');
      }
    } on FormatException catch (e) {
      showMessage("Unknown QR code format.", context);
      debugPrint('Format Exception :: $e');
    } catch (e) {
      showMessage("Unable to capture the code", context);
      debugPrint('Unknown Exception :: $e');
    }
  }
}
