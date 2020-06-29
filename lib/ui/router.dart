import 'package:flutter/material.dart';
import 'package:music_player/constant/route_names.dart';
import 'package:music_player/ui/views/artist_view.dart';
import 'package:music_player/ui/views/startup_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case StartupViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: StartupView(),
      );
    case ArtistViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: ArtistView(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
