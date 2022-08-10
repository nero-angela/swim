import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/theme/lang/generated/l10n.dart';
import 'package:swim/service/theme_service.dart';
import 'package:swim/util/base_router.dart';
import 'package:swim/util/di.dart';

void main() {
  runApp(
    MultiProvider(
      providers: DI.providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, _) {
        return MaterialApp(
          navigatorKey: themeService.navigatorKey,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          initialRoute: BaseRouter.home,
          onGenerateRoute: BaseRouter.generate,
          theme: themeService.themeData,
        );
      },
    );
  }
}
