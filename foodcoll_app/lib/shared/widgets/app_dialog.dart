import 'package:flutter/material.dart';

/// Dialog reutilizável do app.
/// 
/// Pode ser usado para entrada de texto em diferentes telas.
class AppDialog extends StatelessWidget {
  final String title;
  final String hintText;
  final String confirmText;
  final String cancelText;
  final TextEditingController controller;
  final VoidCallback onConfirm;

  const AppDialog({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.onConfirm,
    this.confirmText = 'Enviar',
    this.cancelText = 'Cancelar',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      content: TextField(
        controller: controller,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          color: Color(0xFF4A4F55),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            color: Color(0xFF4A4F55),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFF1FA7A6),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFF1FA7A6),
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
      ),
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            cancelText,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              color: Color(0xFF4A4F55),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onConfirm,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1FA7A6),
            foregroundColor: Colors.white,
            elevation: 0,
            minimumSize: const Size(100, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            confirmText,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}