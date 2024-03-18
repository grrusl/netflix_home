import 'package:flutter/material.dart';
import 'package:netflix_home/features/movies/movies.dart'
    show MoviesViewModel, HomeScreen;
import 'package:netflix_home/features/movies/repository/movies_rep.dart';
import 'package:provider/provider.dart';

import 'config/theme/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MoviesViewModel(MovieRepoImpl()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme(),
      home: const HomeScreen(),
    );
  }
}
