import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/theme/style/palette.dart';
import 'package:swim/presentation/view/gallery/gallery_view_model.dart';
import 'package:swim/presentation/widget/base/base_consumer.dart';
import 'package:swim/presentation/widget/layout/base_scaffold.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({
    Key? key,
    required this.imageUrlList,
    required this.initialPage,
  }) : super(key: key);

  final List<String> imageUrlList;
  final int initialPage;

  @override
  Widget build(BuildContext context) {
    return BaseConsumer<GalleryViewModel>(
      model: GalleryViewModel(
        themeService: context.read(),
        initialPage: initialPage,
      ),
      builder: (context, model, child) {
        return BaseScaffold(
          body: Stack(
            children: [
              PhotoViewGallery.builder(
                pageController: model.controller,
                itemCount: imageUrlList.length,
                builder: (context, index) {
                  final String imageUrl = imageUrlList[index];
                  return PhotoViewGalleryPageOptions(
                    heroAttributes: PhotoViewHeroAttributes(tag: index),
                    imageProvider: CachedNetworkImageProvider(
                      imageUrl,
                    ),
                  );
                },
              ),

              /// Back button
              Positioned(
                right: 4,
                top: 8,
                child: IconButton(
                  icon: const Icon(
                    CupertinoIcons.xmark,
                    color: Palette.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
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
