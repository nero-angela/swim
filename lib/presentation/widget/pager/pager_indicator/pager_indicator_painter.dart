import 'package:flutter/material.dart';
import 'package:swim/service/theme_service.dart';

class PagerIndicatorPainter extends CustomPainter {
  PagerIndicatorPainter({
    required this.pageController,
    required this.themeService,
    required this.itemCount,
    required this.size,
  }) : super(repaint: pageController);
  final PageController pageController;
  final ThemeService themeService;
  final int itemCount;
  final Size size;
  late Paint bgPaint = Paint()
    ..strokeWidth = size.height
    ..color = themeService.hintColor.withOpacity(0.3)
    ..strokeCap = StrokeCap.round;
  late Paint curPaint = Paint()
    ..strokeWidth = size.height
    ..color = themeService.onPrimaryColor
    ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    /// draw background
    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width, 0),
      bgPaint,
    );

    /// draw cursor
    final double scrollMax =
        pageController.position.maxScrollExtent / pageController.viewportFraction;
    final double scrollCur = pageController.offset;
    final double scrollBar = scrollMax / itemCount;
    final double scale = size.width / scrollMax;
    final double scaledCur = scrollCur * scale;
    final double scaledBar = scrollBar * scale;
    canvas.drawLine(
      Offset(scaledCur, 0),
      Offset(scaledCur + scaledBar, 0),
      curPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
