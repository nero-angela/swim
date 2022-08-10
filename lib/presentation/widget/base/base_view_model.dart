import 'package:flutter/material.dart';
import 'package:swim/service/theme_service.dart';

class BaseViewModel extends ChangeNotifier {
  BaseViewModel({
    required this.themeService,
  }) {
    themeService.addListener(notifyListeners);
  }

  /// ThemeService
  final ThemeService themeService;

  /// isBusy
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  set isBusy(bool v) {
    if (v != _isBusy) {
      _isBusy = v;
      notifyListeners();
    }
  }
}
