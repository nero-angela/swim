import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/pager/pager_indicator/pager_indicator.dart';
import 'package:swim/presentation/widget/pager/pager_model.dart';

class Pager<T> extends StatelessWidget {
  const Pager({
    Key? key,
    required this.height,
    required this.dataList,
    required this.itemBuilder,
  }) : super(key: key);

  final double height;
  final List<T> dataList;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<PagerModel>(
      model: PagerModel(
        themeService: context.read(),
        dataList: dataList,
      ),
      builder: (context, model, child) {
        return Column(
          children: [
            SizedBox(
              height: height,
              child: PageView.builder(
                controller: model.controller,
                itemCount: model.dataList.length,
                itemBuilder: itemBuilder,
              ),
            ),
            const SizedBox(height: 16),
            LayoutBuilder(
              builder: (context, constratins) {
                final double maxWidth = constratins.maxWidth;
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: maxWidth * (1 - model.controller.viewportFraction) - 16,
                  ),
                  child: PagerIndicator(
                    itemCount: model.dataList.length,
                    size: const Size(double.infinity, 2),
                    pageController: model.controller,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
