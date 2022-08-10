import 'package:flutter/cupertino.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/view/main/cart/cart_view.dart';
import 'package:swim/presentation/view/main/home/home_view.dart';
import 'package:swim/presentation/view/main/my/my_view.dart';
import 'package:swim/presentation/widget/base/base_view_model.dart';

class SubView {
  final Widget view;
  final String icon;
  final String Function() label;
  const SubView({
    required this.view,
    required this.icon,
    required this.label,
  });
}

class MainModel extends BaseViewModel {
  MainModel({required super.themeService});

  /// Index
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  set currentIndex(int v) {
    _currentIndex = v.clamp(0, subViewList.length);
    notifyListeners();
  }

  /// SubView
  List<SubView> subViewList = [
    SubView(
      view: const HomeView(),
      label: () => S.current.home,
      icon: 'asset/icon/home.png',
    ),
    SubView(
      view: const CartView(),
      label: () => S.current.cart,
      icon: 'asset/icon/cart.png',
    ),
    SubView(
      view: const MyView(),
      label: () => S.current.my,
      icon: 'asset/icon/my.png',
    ),
  ];
}
