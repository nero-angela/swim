import 'package:flutter/material.dart';
import 'package:swim/presentation/view/gallery/gallery_view.dart';
import 'package:swim/presentation/view/main/main_view.dart';
import 'package:swim/presentation/view/test/test_view.dart';

class BaseRouter {
  static const home = '/';
  static const test = '/test';
  static const gallery = '/gallery';

  static Route<dynamic> generate(RouteSettings settings) {
    late Widget screen;
    switch (settings.name) {
      case BaseRouter.home:
        screen = const Main();
        break;
      case BaseRouter.test:
        screen = const Test();
        break;
      case BaseRouter.gallery:
        final args = settings.arguments as Map<String, dynamic>;
        final imageUrlList = args['imageUrlList'] as List<String>;
        final initialPage = args['initialPage'] as int;
        screen = GalleryView(
          imageUrlList: imageUrlList,
          initialPage: initialPage,
        );
        return PageRouteBuilder(
          fullscreenDialog: true,
          pageBuilder: (context, animation, secondaryAnimation) => screen,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
    }

    return MaterialPageRoute(
      settings: settings,
      builder: (_) => screen,
    );
  }
}
