import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/localization/app_localizations.dart';
import 'package:flutter_application_1/src/sample_feature/sample_feature_controller.dart';
import 'package:flutter_application_1/src/sample_feature/sample_feature_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'sample_feature/sample_item_list_view.dart';

// Route names
const listScreen = '/';
const itemDetailScreen = '/sample_item';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      // TODO: Add French Support
      onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case itemDetailScreen:
              // TODO: Pass in the item into details view

              case listScreen:
              default:
                return SampleItemListView(
                  controller: SampleFeatureController(SampleFeatureService()),
                );
            }
          },
        );
      },
    );
  }
}
