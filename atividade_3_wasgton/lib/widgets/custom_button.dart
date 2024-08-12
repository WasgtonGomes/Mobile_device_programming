import 'package:flutter/material.dart';

// Botão personalizado
class CustomButton extends StatelessWidget {
  final String text; // Texto do botão
  final VoidCallback onPressed; // Função a ser executada ao clicar

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Faz o botão ocupar toda a largura disponível
      child: ElevatedButton(
        onPressed: onPressed, // Ação ao clicar
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,// Cor do texto em branco
           backgroundColor: Colors.blue, // Cor de fundo do botão azul claro
          padding: EdgeInsets.symmetric(vertical: 16.0), // Padding do botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Borda arredondada
          ),
        ),
        child: Text(text), // Texto do botão
      ),
    );
  }
}
