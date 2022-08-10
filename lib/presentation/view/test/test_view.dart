import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/view/main/main_view_model.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/layout/base_scaffold.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<MainModel>(
      model: MainModel(
        themeService: context.read(),
      ),
      builder: (context, model, child) {
        return BaseScaffold(
          appBar: AppBar(
            title: Text(S.current.text),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'DP : ${MediaQuery.of(context).devicePixelRatio}x',
                  style: model.themeService.h4,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final double ratio = index + 1;
                    final String image =
                        ratio < 4 ? 'asset/image/sit.png' : 'asset/image/sitx4.png';
                    return Column(
                      children: [
                        Text('x$ratio'),
                        Image.asset(
                          image,
                          width: 40 * ratio,
                          height: 56 * ratio,
                          fit: BoxFit.fitHeight,
                          semanticLabel: '$ratio.x',
                        ),
                        Text('${(40 * ratio).toInt()} x ${(56 * ratio).toInt()}'),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
