import 'package:flutter/material.dart';
import 'package:projet_city/shared/themes/app.theme.dart';
import 'ui/city/widgets/city.w.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Projet trip",
      home: CityW(),//HomePage(),
      theme: AppTheme.lightTheme,
    );
  }
}
