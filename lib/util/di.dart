import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:swim/presentation/theme/swim/light/swim_light_theme.dart';
import 'package:swim/service/theme_service.dart';

abstract class DI {
  /// Repository
  static final List<SingleChildWidget> _repositoryProviders = [];

  /// Service
  static final List<SingleChildWidget> _serviceProviders = [
    ChangeNotifierProvider(create: (context) {
      return ThemeService(theme: SwimLightTheme());
    }),
  ];

  static final List<SingleChildWidget> providers = [
    ..._repositoryProviders,
    ..._serviceProviders,
  ];
}
