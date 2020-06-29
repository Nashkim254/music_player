import 'package:flutter/material.dart';
import 'package:music_player/constant/route_names.dart';
import 'package:music_player/locator.dart';
import 'package:music_player/services/navigtion_service.dart';
import 'package:music_player/ui/router.dart';

void main() {
  // Register all the models and services before the app starts
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: locator<NavigationService>().navigationKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ArtistViewRoute,
      onGenerateRoute: generateRoute,
    );
  }
}
