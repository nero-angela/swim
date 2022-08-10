import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/view/main/main_view_model.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/layout/base_scaffold.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<MainModel>(
      model: MainModel(
        themeService: context.read(),
      ),
      builder: (context, model, child) {
        return BaseScaffold(
          body: Stack(
            children: [
              /// SubView
              IndexedStack(
                index: model.currentIndex,
                children: model.subViewList.map((subView) {
                  return subView.view;
                }).toList(),
              ),

              /// BottomNavigation
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: BottomNavigationBar(
                      backgroundColor: model.themeService.primaryColor.withOpacity(0.7),
                      elevation: 0,
                      enableFeedback: true,
                      selectedLabelStyle: model.themeService.verySmall,
                      unselectedLabelStyle: model.themeService.verySmall,
                      type: BottomNavigationBarType.fixed,
                      currentIndex: model.currentIndex,
                      selectedItemColor: model.themeService.activeColor,
                      unselectedItemColor: model.themeService.inactiveColor,
                      onTap: (index) => model.currentIndex = index,
                      items: model.subViewList.asMap().entries.map((entry) {
                        final SubView subView = entry.value;
                        final int index = entry.key;
                        final bool isSelected = index == model.currentIndex;
                        return BottomNavigationBarItem(
                          icon: Image.asset(
                            subView.icon,
                            width: 23,
                            color: isSelected
                                ? model.themeService.activeColor
                                : model.themeService.inactiveColor,
                          ),
                          label: subView.label(),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
