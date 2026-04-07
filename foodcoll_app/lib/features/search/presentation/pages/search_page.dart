import 'package:flutter/material.dart';
import '../../../../core/base_page.dart';
import '../../../../shared/widgets/app_dialog.dart';
import '../widgets/search_input.dart';
import '../widgets/suggestion_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  void _showSuggestionDialog(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AppDialog(
          title: 'Enviar sugestão',
          hintText: 'Digite uma collocation',
          controller: controller,
          confirmText: 'Enviar',
          cancelText: 'Cancelar',
          onConfirm: () {
            final suggestion = controller.text.trim();

            if (suggestion.isEmpty) {
              debugPrint('Nenhuma sugestão informada');
              return;
            }

            debugPrint(
              'Um usuário sugeriu uma nova colocação: "$suggestion"',
            );

            Navigator.of(dialogContext).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Buscar',
      currentIndex: 1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchInput(
            onChanged: (value) {
              debugPrint('Busca: $value');
            },
          ),
          SuggestionButton(
            onPressed: () {
              _showSuggestionDialog(context);
            },
          ),
        ],
      ),
    );
  }
}