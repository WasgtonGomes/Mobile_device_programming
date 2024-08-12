import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título da Página
              Text('Mensagens', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              // Lista de Mensagens
              Expanded(
                child: ListView(
                  children: [
                    _buildMessageTile('Sajib Rahman', 'Hi John! How are you doing?', 'https://link-da-imagem-sajib.png', '10:45'),
                    _buildMessageTile('Adom Shafi', 'Typing...', 'https://link-da-imagem-adom.png', '09:20'),
                    _buildMessageTile('HR Ruman', 'Good. Let\'s meet at 10:00 near...', 'https://link-da-imagem-ruman.png', 'Yesterday'),
                    _buildMessageTile('Anjellina', 'Hey, how have you been?', 'https://link-da-imagem-anjellina.png', 'Yesterday'),
                    _buildMessageTile('Alexa Shorna', 'Thank you for your comment!', 'https://link-da-imagem-alexa.png', '2 days ago'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função que cria cada item da lista de mensagens
  Widget _buildMessageTile(String name, String message, String imageUrl, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl), // Imagem do contato via URL
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(message, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(time, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
