import 'package:flutter/material.dart';

/// Widget reutilizável para exibir uma collocation com tradução e opção de favoritar.

/// Utilizado nas telas de busca, favoritos e glossário.
class CollocationCard extends StatelessWidget {
  final String collocation;
  final String translation;
  final bool isFavorited;
  final VoidCallback? onFavoriteToggle;

  const CollocationCard({
    Key? key,
    required this.collocation,
    required this.translation,
    this.isFavorited = false,
    this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          // Espaçamento interno vertical entre os itens
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            // Centraliza verticalmente a estrela em relação ao texto
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Área de texto (collocation + tradução)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nome da collocation
                    Text(
                      collocation,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),

                    // Espaço entre collocation e tradução
                    const SizedBox(height: 16),

                    // Tradução da collocation
                    Text(
                      translation,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        color: Color(0xFF4A4F55),
                      ),
                    ),
                  ],
                ),
              ),

              // Ícone de favorito (estrela)
              GestureDetector(
                onTap: onFavoriteToggle,
                child: Icon(
                  // Ícone preenchido ou contornado conforme estado
                  isFavorited ? Icons.star : Icons.star_border,
                  color: const Color(0xFF1FA7A6),
                  size: 32,
                ),
              ),
            ],
          ),
        ),

        // Linha divisória entre os itens
        const Divider(
          height: 2,
          thickness: 2,
          color: Color(0xFFA8D5D4),
        ),
      ],
    );
  }
}