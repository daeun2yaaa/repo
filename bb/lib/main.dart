import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'modules/search/search_provider.dart';
import 'modules/search/search_screen.dart';

void main() {
  runApp(MultiProvider(providers: [ChangeNotifierProvider<SearchResultProvider>(create: (_) => SearchResultProvider())], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          titleSpacing: 15,
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: mainColor),
          ),

        ),
      ),
    );
  }
}
