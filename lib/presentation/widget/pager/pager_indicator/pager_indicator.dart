import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/pager/pager_indicator/pager_indicator_model.dart';
import 'package:swim/presentation/widget/pager/pager_indicator/pager_indicator_painter.dart';

class PagerIndicator extends StatelessWidget {
  const PagerIndicator({
    Key? key,
    required this.size,
    required this.itemCount,
    required this.pageController,
  }) : super(key: key);

  final Size size;
  final int itemCount;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<PagerIndicatorModel>(
      model: PagerIndicatorModel(
        themeService: context.read(),
      ),
      builder: (context, model, _) {
        return CustomPaint(
          painter: PagerIndicatorPainter(
            pageController: pageController,
            themeService: model.themeService,
            itemCount: itemCount,
            size: size,
          ),
          size: size,
        );
      },
    );
  }
}
