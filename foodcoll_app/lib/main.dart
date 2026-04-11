import 'package:flutter/material.dart';
import 'package:foodcoll_app/features/collocations/presentation/pages/collocations_page.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/search/presentation/pages/search_page.dart';
import 'features/favorites/presentation/pages/favorites_page.dart';
import 'features/settings/presentation/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (_) => const HomePage(),
        '/search': (_) => const SearchPage(),
        '/favorites': (_) => const FavoritesPage(),
        '/settings': (_) => const SettingsPage(),
        '/collocations': (_) => const CollocationsPage(),
      },
    );
  }
}