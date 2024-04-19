import 'package:flutter/material.dart';
import '../onGenerateRoute.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name?.split('/');

    if (path != null && path.length > 2 && path[1] == "details") {
      return MaterialPageRoute(
        builder: (context) => DetailScreen(id: int.tryParse(path[2]) ?? 0), // Используем оператор ??, чтобы указать значение по умолчанию
      );
    }

    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}
