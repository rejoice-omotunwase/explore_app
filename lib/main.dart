import 'package:explore_app/screens/search.dart';
import 'package:explore_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: context.watch<ThemeProvider>().themeData,
          home: const SearchScreen(),
        );
      },
    );
  }
}
