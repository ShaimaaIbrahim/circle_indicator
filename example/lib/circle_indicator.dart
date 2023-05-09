import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class MyLoadingIndicator {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return kIsWeb || Platform.isAndroid || Platform.isIOS
            ? Center(
          child: CircularProgressIndicator(),
        )
            : CupertinoActivityIndicator();
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context).pop();
  }
}
