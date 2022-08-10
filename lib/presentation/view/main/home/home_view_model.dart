import 'package:swim/presentation/widget/base/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({
    required super.themeService,
  });

  List<String> imageUrlList = [
    "https://cdn2.thecatapi.com/images/63g.jpg",
    "https://cdn2.thecatapi.com/images/a3h.jpg",
    "https://cdn2.thecatapi.com/images/a9m.jpg",
    "https://cdn2.thecatapi.com/images/aph.jpg",
    "https://cdn2.thecatapi.com/images/1rd.jpg",
    "https://cdn2.thecatapi.com/images/805.gif",
  ];
}
