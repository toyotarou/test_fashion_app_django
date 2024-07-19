import 'package:flutter/cupertino.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';

void showCartPopup(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return CupertinoActionSheet(
          title: Text(
            'Update Cart Item Qauntity',
            style: appStyle(
              18,
              Kolors.kGrayLight,
              FontWeight.bold,
            ),
          ),
          message: const Text(
            'By updating the cart the app will refetch the data',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            isDefaultAction: true,
            child: const Text('Cancel'),
          ));
    },
  );
}
