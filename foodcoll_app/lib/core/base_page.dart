import 'package:flutter/material.dart';

/// Estrutura base reutilizável das telas do app.

/// Define o conteúdo da página e a navegação inferior padrão.
class BasePage extends StatefulWidget { 
  final Widget body;
  final String title;
  final int currentIndex;
  final Function(int)? onTabChanged;

  const BasePage({
    Key? key,
    required this.body,
    required this.title,
    this.currentIndex = 0,
    this.onTabChanged,
  }) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  late int _selectedIndex;

  // Cores e tamanhos usados na barra de navegação inferior
  final Color iconColor = const Color(0xFFA8D5D4);
  final Color iconHoverColor = const Color(0xFF1FA7A6);
  final double iconSize = 24;
  final double labelFontSize = 12;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex; // Define qual item da navegação começa selecionado
  }

  /// Atualiza o item selecionado e executa a navegação, se houver callback.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (widget.onTabChanged != null) {
      widget.onTabChanged!(index);
    }
  }

  /// Cria um item da barra de navegação inferior.
  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: iconSize, color: iconColor),
      activeIcon: Icon(icon, size: iconSize, color: iconHoverColor),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Área principal da tela com espaçamento padrão do app
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 16,
          right: 16,
        ),
        child: widget.body,
      ),

      // Barra de navegação inferior padrão
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            fontSize: labelFontSize,
            fontFamily: 'Inter',
            color: iconHoverColor,
            height: 1.5,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: labelFontSize,
            fontFamily: 'Inter',
            color: iconColor,
            height: 1.5,
          ),
          type: BottomNavigationBarType.fixed,
          iconSize: iconSize,
          items: [
            _buildNavItem(Icons.home, 'Home'),
            _buildNavItem(Icons.search, 'Buscar'),
            _buildNavItem(Icons.star, 'Favoritos'),
            _buildNavItem(Icons.settings, 'Configurações'),
          ],
        ),
      ),
    );
  }
}