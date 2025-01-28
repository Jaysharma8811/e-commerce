import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme:TAppTheme.darkTheme,
    );
  }

}
