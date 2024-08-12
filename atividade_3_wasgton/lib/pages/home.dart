import 'package:flutter/material.dart';
import 'detalhes_destino_madri.dart'; // Importando a página de detalhes

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Cor de fundo cinza bem clarinho
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://avatars.githubusercontent.com/u/71408084?v=4',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 8),
                  const Text(
                    'WASGTON',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explore o',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                children: [
                  Text(
                    'Belo mundo',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'World!',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24), // Espaço entre título e subtítulo

              // Subtítulo Melhor Destino
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Melhor destino',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Ação para o botão "Ver tudo"
                    },
                    child: Text('Ver tudo'),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Imagens dos Destinos
              SizedBox(
                height: 350, // Altura fixa para o carrossel
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildDestinationCard(
                      context, // Passando o contexto
                      'Espanha',
                      'Madrid, Espanha',
                      4.7,
                      'https://i.pinimg.com/736x/c6/47/a3/c647a3bc8f13f829f3645c752990413b.jpg',
                      '/detalhesMadrid', // Rota para a página de detalhes de Madrid
                      likes: 50,
                    ),
                    _buildDestinationCard(
                      context, // Passando o contexto
                      'França',
                      'Paris, França',
                      4.8,
                      'https://i.pinimg.com/564x/b6/95/85/b695859809afd7ccb78b6bd919fd0025.jpg',
                      '/detalhesParis', // Outra rota (se precisar)
                      likes: 30,
                    ),
                    SizedBox(width: 16), // Espaço extra no final para evitar overflow
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 1, // Define o item ativo (Home)
        selectedItemColor: Colors.blue,
      ),
    );
  }

  // Função que constrói cada cartão de destino
  Widget _buildDestinationCard(BuildContext context, String title, String location, double rating, String imageUrl, String routeName, {int likes = 0}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Container(
          width: 300, // Largura fixa para as imagens do carrossel
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 200, // Altura fixa para as imagens do carrossel
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 16),
                              SizedBox(width: 4),
                              Text(
                                rating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on, size: 14, color: Colors.grey),
                              Text(location, style: TextStyle(fontSize: 14, color: Colors.grey)),
                            ],
                          ),
                          Row(
                            children: List.generate(
                              likes > 3 ? 3 : likes,
                              (index) => Padding(
                                padding: EdgeInsets.only(right: 2.0),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage(
                                    'https://cdn2.iconfinder.com/data/icons/avatars-60/5985/1-Girl-256.png',
                                  ), // URL da imagem do usuário
                                ),
                              ),
                            )..add(
                                Text(
                                  "+$likes",
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}