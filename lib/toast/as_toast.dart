import 'dart:ui';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class ASToast {
  static show(String text) {
    BotToast.showText(
      text: text,
      borderRadius: BorderRadius.circular(20),
    );
  }

  static Function get loading {
    return BotToast.showCustomLoading(
      toastBuilder: (cancel) {
        return Center(
          child: Material(
            clipBehavior: Clip.antiAlias,
            shape: StadiumBorder(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
