import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/view/main/my/my_view_model.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/layout/base_scaffold.dart';
import 'package:swim/presentation/widget/list_tile/icon_list_tile.dart';
import 'package:swim/util/base_router.dart';

class MyView extends StatelessWidget {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<MyViewModel>(
      model: MyViewModel(themeService: context.read()),
      builder: (context, model, _) {
        return BaseScaffold(
          appBar: AppBar(
            title: Text(S.current.my),
          ),
          body: Column(
            children: [
              /// Language
              IconListTile(
                title: S.current.currentLang,
                trailing: Text(model.themeService.currentLocale.toUpperCase()),
                onPressed: model.themeService.toggleLocale,
              ),

              /// Theme
              IconListTile(
                title: S.current.theme,
                trailing: Icon(
                  model.themeService.isDark
                      ? CupertinoIcons.moon
                      : CupertinoIcons.sun_max,
                ),
                onPressed: model.themeService.toggleTheme,
              ),
              IconListTile(
                title: S.current.test,
                trailing: const Icon(CupertinoIcons.forward),
                onPressed: () => Navigator.pushNamed(context, BaseRouter.test),
              ),
            ],
          ),
        );
      },
    );
  }
}
