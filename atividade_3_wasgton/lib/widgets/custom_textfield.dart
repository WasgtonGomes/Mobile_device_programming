import 'package:flutter/material.dart';

// Campo de texto personalizado
class CustomTextField extends StatelessWidget {
  final String hintText; // Texto de dica
  final bool obscureText; // Texto oculto (para senhas)

  CustomTextField({required this.hintText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText, // Define se o texto será oculto
      decoration: InputDecoration(
        hintText: hintText, // Texto de dica
        filled: true, // Ativa o preenchimento de fundo
        fillColor: Color(0xFFD3D3D3), // Cor de fundo cinza claro
        border: OutlineInputBorder(
          borderSide: BorderSide.none, // Remove a borda preta
          borderRadius: BorderRadius.circular(8.0), // Borda arredondada
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0), // Padding interno
      ),
    );
  }
}
