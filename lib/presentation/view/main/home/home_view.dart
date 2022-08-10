import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/presentation/view/main/home/home_view_model.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/layout/base_scaffold.dart';
import 'package:swim/presentation/widget/pager/pager.dart';
import 'package:swim/presentation/widget/text_field/search_text_field/search_text_field.dart';
import 'package:swim/util/base_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<HomeViewModel>(
      model: HomeViewModel(
        themeService: context.read(),
      ),
      builder: (context, model, _) {
        return BaseScaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 200,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Logo
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    bottom: 21,
                    right: 30,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/image/logo.png',
                        width: 80,
                        color: model.themeService.onPrimaryColor,
                      ),
                      const Spacer(),
                      Image.asset(
                        'asset/icon/alarm.png',
                        width: 22,
                        color: model.themeService.onPrimaryColor,
                      ),
                    ],
                  ),
                ),

                /// Search
                const Padding(
                  padding: EdgeInsets.only(
                    right: 15,
                    left: 15,
                    bottom: 30,
                  ),
                  child: SearchTextField(),
                ),

                /// Hero
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      Text(
                        S.current.homeHeroTitle,
                        style: model.themeService.h4,
                      ),

                      const SizedBox(height: 6),

                      /// Item
                      Text(
                        'BALENCIAGA CITY BAG',
                        style: model.themeService.bodyBold.copyWith(
                          color: model.themeService.contentColor,
                        ),
                      ),

                      /// SubTitle
                      Text(
                        S.current.homeHeroSubTitle,
                        style: model.themeService.small.copyWith(),
                      ),
                      const SizedBox(height: 26),
                    ],
                  ),
                ),

                /// Hero Pager
                Pager<String>(
                  height: 323,
                  dataList: model.imageUrlList,
                  itemBuilder: (context, index) {
                    final String imageUrl = model.imageUrlList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          BaseRouter.gallery,
                          arguments: {
                            'imageUrlList': model.imageUrlList,
                            'initialPage': index,
                          },
                        );
                      },
                      child: Hero(
                        tag: index,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedNetworkImage(
                              imageUrl: imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
