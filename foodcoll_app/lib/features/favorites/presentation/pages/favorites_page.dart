import 'package:flutter/material.dart';
import 'package:foodcoll_app/shared/widgets/page_header.dart';
import '../../../../core/base_page.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Favoritos',
      currentIndex: 2,
      body: Column(
        children: [PageHeader(title: "Meus Favoritos", onBack: () => true)],
      ),
    );
  }
}
