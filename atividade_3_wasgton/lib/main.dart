import 'package:atividade_3_wasgton/pages/home.dart';
import 'package:flutter/material.dart';
import '/pages/login_page.dart'; // Importando a página de login
import 'pages/integrado_carrosel.dart'; // Importando a página inicial
import 'pages/detalhes_destino_madri.dart'; // Importando a página de detalhes de madri
import '/pages/lugares_populares_page.dart'; // Importando a página Lugares Populares
import '/pages/perfil_page.dart'; // Importando a página Lugares Populares
import '/pages/detalhes_destino_paris.dart'; // Importando a página detalhes de paris
import '/pages/mensagem_page.dart'; // Importando a página detalhes de paris


void main() {
  runApp(MyApp()); // Inicializa o aplicativo
}

// Classe principal do aplicativo
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cor primária do aplicativo
      ),
      home: LoginPage(), // Define a página de login como inicial
      routes: {
        '/integradoCarrossel': (context) => IntegradoCarrosel(), // Define a rota para a página Integrado carrossel
        '/home': (context) => HomePage(), // Define a rota para a página Home
        '/detalhesMadrid': (context) => DetalhesMadriPage(), // Define a rota para a página de detalhes de madri
        '/lugaresPopulares': (context) => LugaresPopularesPage(), // Rota para a página Lugares Populares
        '/perfil': (context) => PerfilPage(), // Rota para a página 
        '/detalhesParis': (context) => DetalhesParisPage(), // Rota para a página Detalhes de paris
        '/mensagens': (context) => MensagensPage(), // Rota para a página Mensagens
      },
    );
  }
}
