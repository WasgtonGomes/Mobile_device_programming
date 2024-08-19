import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Ação de voltar
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.blue), // Cor do ícone de lápis ajustada para azul
            onPressed: () {
              // Ação de editar
            },
          ),
        ],
        title: Text(
          'Perfil',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Seção de Perfil
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71408084?v=4'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Wasgton',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Wasgton@email.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            // Informações Adicionais
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '360',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Recompensa',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue, // Cor da fonte ajustada para azul
                        decoration: TextDecoration.none, // Removendo sublinhado
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '235',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Vigilantes',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue, // Cor da fonte ajustada para azul
                        decoration: TextDecoration.none, // Removendo sublinhado
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '473',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Lista de Desejos',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue, // Cor da fonte ajustada para azul
                        decoration: TextDecoration.none, // Removendo sublinhado
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40), // Aumentando o espaçamento entre as seções
            // Corpo Principal com Itens de Menu
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero, // Removendo o padding padrão do ListView
                children: [
                  MenuItem(
                    icon: Icons.person,
                    text: 'Perfil',
                    onTap: () {
                      // Ação ao clicar
                    },
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  MenuItem(
                    icon: Icons.favorite,
                    text: 'Marcado como favorito',
                    onTap: () {
                      // Ação ao clicar
                    },
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  MenuItem(
                    icon: Icons.history,
                    text: 'Viagens anteriores',
                    onTap: () {
                      // Ação ao clicar
                    },
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  MenuItem(
                    icon: Icons.settings,
                    text: 'Configurações',
                    onTap: () {
                      // Ação ao clicar
                    },
                  ),
                  SizedBox(height: 16), // Espaçamento entre os botões
                  MenuItem(
                    icon: Icons.info, // Ícone para "Versões"
                    text: 'Versões',
                    onTap: () {
                      // Ação ao clicar
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  MenuItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Aumentando a altura dos itens
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // Fonte em negrito
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
        onTap: onTap,
      ),
    );
  }
}
