import 'package:atividade_3_wasgton/pages/home.dart';
import 'package:flutter/material.dart';
import '/pages/login_page.dart'; // Importando a página de login
import 'pages/integrado_carrosel.dart'; // Importando a página inicial
import 'pages/detalhes_destino_madri.dart'; // Importando a página de detalhes de madri
import '/pages/lugares_populares_page.dart'; // Importando a página Lugares Populares
import '/pages/perfil_page.dart'; // Importando a página Lugares Populares
import '/pages/detalhes_destino_paris.dart'; // Importando a página detalhes de paris
import '/pages/mensagem_page.dart'; // Importando a página de mensagens

// Importa o helper do banco de dados
import '/pages/database_turismo.dart'; // Arquivo onde está a configuração do banco de dados SQLite

// Função principal do aplicativo
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await insertInitialData(); // Inserir dados iniciais no banco de dados "DataBaseTurismo"
  runApp(MyApp()); // Inicializa o aplicativo
}

// Função para inserir dados iniciais no banco de dados
Future<void> insertInitialData() async {
  final dbHelper = DatabaseTurismo.instance;
  List<Map<String, dynamic>> places = await dbHelper.queryAllPlaces();

  // Insere os dados iniciais no banco se ele estiver vazio
  if (places.isEmpty) {
    await dbHelper.insertPlace({
      'name': 'Madrid, Espanha',
      'location': 'Espanha',
      'reviews': 120,
    });
    await dbHelper.insertPlace({
      'name': 'Paris, França',
      'location': 'França',
      'reviews': 200,
    });
    await dbHelper.insertPlace({
      'name': 'Lima, Peru',
      'location': 'Peru',
      'reviews': 80,
    });
    await dbHelper.insertPlace({
      'name': 'Cairo, Egito',
      'location': 'Egito',
      'reviews': 150,
    });
    await dbHelper.insertPlace({
      'name': 'Ji-Paraná, Brasil',
      'location': 'Brasil',
      'reviews': 90,
    });
    await dbHelper.insertPlace({
      'name': 'Nova York, EUA',
      'location': 'EUA',
      'reviews': 300,
    });
  }
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
        '/detalhesMadrid': (context) => DetalhesMadriPage(), // Define a rota para a página de detalhes de Madri
        '/lugaresPopulares': (context) => LugaresPopularesPage(), // Rota para a página Lugares Populares
        '/perfil': (context) => PerfilPage(), // Rota para a página de Perfil
        '/detalhesParis': (context) => DetalhesParisPage(), // Rota para a página de Detalhes de Paris
        '/mensagens': (context) => MensagensPage(), // Rota para a página de Mensagens
      },
    );
  }
}
