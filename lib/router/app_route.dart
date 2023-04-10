enum AppRoute {
  home,
  counter,
}

extension AppRouteExtension on AppRoute {
  String get path {
    return '/$name';
  }
}
