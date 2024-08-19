import 'package:flutter/material.dart';
import '/pages/perfil_page.dart';
import 'package:atividade_3_wasgton/pages/home.dart';

class MensagensPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mensagens',
                  style: TextStyle(
                    fontFamily: 'Sans-serif',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.black),
                  onPressed: () {
                    // Ação ao clicar no ícone dos três pontinhos
                  },
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Nova Linha com Rótulo e Ícone de Lápis
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mensagens',
                  style: TextStyle(
                    fontFamily: 'Sans-serif',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Icon(Icons.edit, color: Colors.black),
                ),
              ],
            ),
          ),
          // Barra de Pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Pesquise bate-papos e mensagens',
                hintStyle: TextStyle(
                  fontFamily: 'Sans-serif',
                  fontSize: 16,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
          ),
          // Lista de Conversas
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: 5,  // Alterado para 5 contatos
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: index == 0
                                ? AssetImage('lib/imagens/Ellipse 899.png')
                                : index == 1
                                    ? AssetImage('lib/imagens/contato02.png')
                                    : index == 2
                                        ? AssetImage('lib/imagens/Contato03.png')
                                        : index == 3
                                            ? AssetImage('lib/imagens/Contato04.png')
                                            : AssetImage('lib/imagens/Contato05.png'), // Adiciona a imagem do 5º contato
                          ),
                          if (index == 0)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.green, // Alterado para verde
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2), // Borda branca
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 17,
                                  minHeight: 17,
                                ),
                              ),
                            ),
                          if (index == 1)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2), // Borda branca
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 17,
                                  minHeight: 17,
                                ),
                              ),
                            ),
                          if (index == 2)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2), // Borda branca
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 17,
                                  minHeight: 17,
                                ),
                              ),
                            ),
                          if (index == 3)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2), // Borda branca
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 17,
                                  minHeight: 17,
                                ),
                              ),
                            ),
                          if (index == 4) // Adiciona o ponto verde para o 5º contato
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Colors.green, // Cor verde para o ponto
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white, width: 2), // Borda branca
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 17,
                                  minHeight: 17,
                                ),
                              ),
                            ),
                        ],
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                index == 0
                                    ? 'Sajib Rahman'
                                    : index == 1
                                        ? 'Adom Shafi'
                                        : index == 2
                                            ? 'HR Rumen'
                                            : index == 3
                                                ? 'Anjelina'
                                                : 'Alexa Shorna',  // Nome do 5º contato
                                style: TextStyle(
                                  fontFamily: 'Sans-serif',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              if (index == 0) ...[
                                SizedBox(width: 65), // Espaçamento de 70px entre o nome e o ícone
                                Icon(
                                  Icons.check,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                              if (index == 1) ...[
                                SizedBox(width: 80), // Espaçamento de 80px para o 2º contato
                                Icon(
                                  Icons.done_all,  // Ícone de verificação dupla
                                  color: Colors.green, // Cor verde para visualização
                                  size: 20,
                                ),
                              ],
                              if (index == 2) ...[
                                SizedBox(width: 88), // Espaçamento adicional de 8px (total de 88px) para o 3º contato
                                Icon(
                                  Icons.done_all,  // Ícone de verificação dupla
                                  color: Colors.grey, // Cor cinza para não visualizada
                                  size: 20,
                                ),
                              ],
                              if (index == 3) ...[
                                SizedBox(width: 110), // Espaçamento de 20px adicional (total de 110px) para o 4º contato
                                Icon(
                                  Icons.check,  // Ícone de verificação simples
                                  color: Colors.grey, // Cor cinza para não visualizada
                                  size: 20,
                                ),
                              ],
                              if (index == 4) ...[
                                SizedBox(width: 65), // Espaçamento similar ao 2º contato
                                Icon(
                                  Icons.done_all,  // Ícone de verificação dupla
                                  color: Colors.green, // Cor verde para visualização
                                  size: 20,
                                ),
                              ],
                            ],
                          ),
                          Text(
                            index == 0
                                ? '09:46'
                                : index == 1
                                    ? '08:42'
                                    : index == 2
                                        ? 'Ontem'
                                        : index == 3
                                            ? '07:56'
                                            : '05:52',  // Horário do 5º contato
                            style: TextStyle(
                              fontFamily: 'Sans-serif',
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        index == 0
                            ? 'Hi, John! 👋 How are you doing?'
                            : index == 1
                                ? 'Typing...'
                                : index == 2
                                    ? 'You: Cool! ☺️ Let’s meet at 18:00 near the traveling!'
                                    : index == 3
                                        ? 'You: Hey, will you come to the party on Saturday?'
                                        : 'Thank you for coming! Your or...',  // Prévia de mensagem do 5º contato
                        style: TextStyle(
                          fontFamily: 'Sans-serif',
                          fontSize: 15,
                          color: index == 0
                              ? Colors.grey[700]
                              : index == 1
                                  ? Colors.blue
                                  : index == 2
                                      ? Colors.grey[700]
                                      : index == 3
                                          ? Colors.grey[700]
                                          : Colors.grey[700],  // Cor da prévia de mensagem do 5º contato
                        ),
                      ),
                    ),
                    if (index != 4) SizedBox(height: 30),  // Espaçamento equivalente à barra divisória
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.blue),
            label: 'Mensagens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Perfil',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue, // Cor azul para o item selecionado
        unselectedItemColor: Colors.grey,
        elevation: 10,
        currentIndex: 0,
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PerfilPage()),
            );
          }
        },
      ),
    );
  }
}
