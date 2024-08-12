import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Imagem de Perfil
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://link-da-imagem-do-perfil.png'), // Imagem de perfil via URL
              ),
              SizedBox(height: 20),
              // Nome e Email
              Text(
                'Leonardo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('leonardo@gmail.com'),
              SizedBox(height: 20),
              // Opções de Menu
              _buildProfileOption(Icons.favorite, 'Marcado como favorito'),
              _buildProfileOption(Icons.history, 'Viagens anteriores'),
              _buildProfileOption(Icons.settings, 'Configurações'),
              _buildProfileOption(Icons.info_outline, 'Versão'),
            ],
          ),
        ),
      ),
    );
  }

  // Função que cria cada opção do menu de perfil
  Widget _buildProfileOption(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 16),
          Text(title, style: TextStyle(fontSize: 16)),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
