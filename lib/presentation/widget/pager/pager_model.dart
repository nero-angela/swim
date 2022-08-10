import 'package:flutter/material.dart';
import 'package:swim/presentation/widget/base/base_view_model.dart';

class PagerModel<T> extends BaseViewModel {
  PagerModel({
    required super.themeService,
    required this.dataList,
  });

  final List<T> dataList;

  final PageController controller = PageController(
    viewportFraction: 0.85,
  );
}
