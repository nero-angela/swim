import 'package:flutter/material.dart';
import 'package:swim/presentation/widget/base/base_view_model.dart';

class SearchTextFieldModel extends BaseViewModel {
  SearchTextFieldModel({
    required super.themeService,
    TextEditingController? controller,
  }) : controller = controller ?? TextEditingController();

  final TextEditingController controller;

  void onChanged(String v) {
    notifyListeners();
  }

  void clear() {
    controller.clear();
    notifyListeners();
  }
}
