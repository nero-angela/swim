import 'package:flutter/material.dart';
import 'package:swim/presentation/widget/base/base_view_model.dart';

class GalleryViewModel extends BaseViewModel {
  GalleryViewModel({
    required super.themeService,
    required int initialPage,
  }) {
    controller = PageController(initialPage: initialPage);
  }

  late final PageController controller;
}
