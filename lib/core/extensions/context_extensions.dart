import 'package:flutter/material.dart';

extension UnfocusWidgetExtension on BuildContext {
  void get unfocus {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
