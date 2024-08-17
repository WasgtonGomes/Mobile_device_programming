import 'package:flutter/material.dart';
// Importa o pacote Flutter, que contém componentes de interface de usuário (UI) e outras funcionalidades essenciais para construir aplicativos.

class MyApp extends StatelessWidget {
// Define uma classe chamada MyApp que herda de StatelessWidget. Um StatelessWidget é um widget que não mantém estado interno.

  @override
  Widget build(BuildContext context) {
    // O método build é chamado para construir a interface do usuário. Ele recebe um BuildContext como argumento, que contém informações sobre o local no widget tree onde o widget está localizado.

    return MaterialApp(
      // Retorna um widget MaterialApp, que é a raiz do aplicativo. O MaterialApp é um widget que configura muitas das coisas necessárias para um aplicativo Flutter, como temas, rotas, etc.

      home: LugaresPopularesPage(),
      // A propriedade 'home' do MaterialApp especifica qual widget será exibido na tela inicial do aplicativo. Aqui, 'LugaresPopularesPage' é definido como a tela inicial.
    );
  }
}

class LugaresPopularesPage extends StatelessWidget {
// Define uma nova classe chamada LugaresPopularesPage, que também herda de StatelessWidget, indicando que este widget não tem estado mutável.

  @override
  Widget build(BuildContext context) {
    // O método build, como na classe anterior, é responsável por construir a interface do usuário.

    return Scaffold(
      // Retorna um widget Scaffold, que fornece uma estrutura básica para uma página de aplicativo. O Scaffold contém a barra de aplicativos (AppBar) e o corpo da página.

      appBar: AppBar(
        // Cria uma barra de aplicativos (AppBar) no topo da página.

        backgroundColor: Colors.white,
        // Define a cor de fundo da AppBar como branca.

        elevation: 0,
        // Define a elevação (sombra) da AppBar como 0, tornando-a plana.

        leading: IconButton(
          // O leading é o primeiro widget no AppBar, normalmente usado para mostrar um botão de voltar ou um ícone.

          icon: Icon(Icons.arrow_back, color: Colors.black),
          // Define o ícone de um botão de voltar com uma cor preta.

          onPressed: () {
            Navigator.pop(context);
            // A função onPressed é chamada quando o botão é pressionado. Aqui, ela utiliza o Navigator para voltar para a página anterior no histórico de navegação.
          },
        ),
        title: Text(
          'Lugares populares',
          // Define o título da AppBar como 'Lugares populares'.

          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          // Define o estilo do texto, com a cor preta e negrito.
        ),
        centerTitle: true,
        // Centraliza o título no AppBar.
      ),

      body: Padding(
        // O corpo da página é envolvido por um widget Padding, que adiciona espaço ao redor do conteúdo.

        padding: const EdgeInsets.all(8.0),
        // Define o padding (espaçamento interno) de 8 pixels em todos os lados.

        child: Column(
          // Dentro do padding, um widget Column é usado para organizar os widgets em uma coluna vertical.

          crossAxisAlignment: CrossAxisAlignment.start,
          // Alinha os filhos da coluna ao início do eixo horizontal (esquerda).

          children: [
            Text(
              'Todos os lugares populares',
              // O primeiro widget dentro da coluna é um texto que exibe 'Todos os lugares populares'.

              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              // Define o estilo do texto, com tamanho de fonte 18 e negrito.
            ),
            SizedBox(height: 8),
            // Adiciona um espaçamento vertical de 8 pixels entre o texto anterior e o próximo widget.

            Expanded(
              // O próximo widget é um Expanded, que permite que o GridView abaixo ocupe todo o espaço disponível restante dentro da coluna.

              child: GridView.count(
                // Cria um GridView que organiza os widgets em uma grade com um número fixo de colunas.

                crossAxisCount: 2,
                // Define que a grade terá 2 colunas.

                crossAxisSpacing: 8.0,
                // Define um espaçamento horizontal de 8 pixels entre os itens da grade.

                mainAxisSpacing: 8.0,
                // Define um espaçamento vertical de 8 pixels entre os itens da grade.

                childAspectRatio: 0.7,
                // Define a proporção de aspecto dos itens (largura / altura). Aqui, é definido como 0.7 para evitar overflow.

                children: [
                  // A propriedade 'children' define os widgets que serão exibidos dentro do GridView.

                  buildLocationItem(
                    'https://i.pinimg.com/236x/be/40/1a/be401aa30c3f458fdf848f62686b6f43.jpg',
                    'Espanha',
                    'Madrid, Espanha',
                    'R\$6459/ Pessoa',
                    4.5,
                    120,
                  ),
                  // Cria um item de grade usando a função 'buildLocationItem', passando uma imagem, título, subtítulo, preço, avaliação e número de avaliações.

                  buildLocationItem(
                    'https://i.pinimg.com/564x/0c/78/9d/0c789da04b70243113a799140209388d.jpg',
                    'França',
                    'Paris, França',
                    'R\$6894/ Pessoa',
                    4.7,
                    200,
                  ),
                  // Repete o padrão para outros locais populares.

                  buildLocationItem(
                    'https://i.pinimg.com/564x/f4/04/d3/f404d3e6b96fe02851b14a0d5b2ef4c2.jpg',
                    'Peru',
                    'Lima, Peru',
                    'R\$1765/ Pessoa',
                    4.3,
                    80,
                  ),

                  buildLocationItem(
                    'https://i.pinimg.com/564x/88/60/6d/88606d001c4e5225ef86fadb4e493aaa.jpg',
                    'Egito',
                    'Cairo, Egito',
                    'R\$8857/ Pessoa',
                    4.6,
                    150,
                  ),

                  buildLocationItem(
                    'https://i.pinimg.com/564x/b6/92/ad/b692ade52c07c07138587d44ab1d01c8.jpg',
                    'Brasil',
                    'Ji-Paraná, Brasil',
                    'R\$3980/ Pessoa',
                    4.8,
                    90,
                  ),

                  buildLocationItem(
                    'https://i.pinimg.com/564x/5d/15/63/5d1563126d8071fb1ac5843ea735a7eb.jpg',
                    'Estados Unidos',
                    'Nova York, EUA',
                    'R\$8750/ Pessoa',
                    4.9,
                    300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLocationItem(String imagePath, String title, String subtitle, String price, double rating, int reviews) {
    // Define uma função chamada 'buildLocationItem' que constrói um widget para exibir os detalhes de um local (imagem, título, subtítulo, preço, avaliação e número de avaliações).

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        // StatefulBuilder permite que o widget interno tenha estado mutável, mesmo dentro de um StatelessWidget.

        return Card(
          // Retorna um widget Card que é usado para criar um contêiner com bordas arredondadas e uma sombra leve.

          margin: EdgeInsets.all(8),
          // Define um espaçamento externo (margem) de 8 pixels em torno do Card.

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // Define a forma do Card com bordas arredondadas de 10 pixels.

          child: Column(
            // Dentro do Card, os widgets são organizados verticalmente usando um Column.

            crossAxisAlignment: CrossAxisAlignment.start,
            // Alinha os filhos do Column ao início do eixo horizontal (esquerda).

            children: [
              Stack(
                // O primeiro widget dentro da coluna é um Stack, que permite sobrepor widgets.

                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    // ClipRRect corta o widget filho para que tenha bordas arredondadas na parte superior.

                    child: Image.network(
                      imagePath,
                      // Carrega e exibe a imagem a partir da URL fornecida.

                      fit: BoxFit.cover,
                      // Define que a imagem deve cobrir completamente o espaço disponível, mantendo a proporção da imagem.

                      width: double.infinity,
                      // Define que a largura da imagem deve preencher toda a largura disponível.

                      height: 100,
                      // Define uma altura fixa de 100 pixels para a imagem.
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    // Define a posição do widget filho dentro do Stack, a 10 pixels do topo e da direita.

                    child: FavoriteIcon(
                      initialReviews: reviews,
                      // Exibe o ícone de favorito (coração), com o número inicial de avaliações passado como parâmetro.

                      onFavoriteChanged: (newReviews) {
                        setState(() {
                          reviews = newReviews;
                        });
                        // Quando o ícone de favorito é pressionado, o número de avaliações é atualizado.
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Adiciona um espaçamento interno (padding) de 8 pixels ao redor do conteúdo dentro do Card.

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Dentro do padding, os widgets são organizados em outra coluna vertical.

                  children: [
                    Text(
                      title,
                      // Exibe o título do local (por exemplo, 'Espanha').

                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      // Define o estilo do texto, com tamanho de fonte 14 e negrito.
                    ),
                    Text(
                      subtitle,
                      // Exibe o subtítulo do local (por exemplo, 'Madrid, Espanha').

                      style: TextStyle(color: Colors.grey),
                      // Define o estilo do texto, com a cor cinza.
                    ),
                    SizedBox(height: 4),
                    // Adiciona um espaçamento vertical de 4 pixels entre o subtítulo e o próximo widget.

                    Row(
                      // Organiza os widgets seguintes em uma linha horizontal.

                      children: [
                        Text(
                          rating.toString(),
                          // Exibe a avaliação do local (por exemplo, '4.5').

                          style: TextStyle(fontSize: 12),
                          // Define o estilo do texto, com tamanho de fonte 12.
                        ),
                        SizedBox(width: 4),
                        // Adiciona um espaçamento horizontal de 4 pixels entre a avaliação e as estrelas.

                        buildRatingStars(rating),
                        // Chama a função 'buildRatingStars' para exibir as estrelas de avaliação.

                        SizedBox(width: 4),
                        // Adiciona um espaçamento horizontal de 4 pixels entre as estrelas e o número de avaliações.

                        Text('($reviews)', style: TextStyle(fontSize: 12)),
                        // Exibe o número de avaliações (por exemplo, '(120)'), com tamanho de fonte 12.
                      ],
                    ),
                    SizedBox(height: 4),
                    // Adiciona um espaçamento vertical de 4 pixels entre as estrelas e o preço.

                    Text(
                      price,
                      // Exibe o preço do local (por exemplo, 'R\$6459/ Pessoa').

                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue),
                      // Define o estilo do texto, com tamanho de fonte 12, negrito e cor azul.
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildRatingStars(double rating) {
    // Define uma função chamada 'buildRatingStars' que constrói um widget para exibir estrelas de avaliação com base na avaliação numérica.

    int fullStars = rating.floor();
    // Calcula o número de estrelas completas (arredondado para baixo).

    bool hasHalfStar = (rating - fullStars) >= 0.5;
    // Verifica se a avaliação inclui meia estrela.

    List<Widget> stars = [];
    // Cria uma lista para armazenar os widgets de estrelas.

    for (int i = 0; i < fullStars; i++) {
      stars.add(Icon(Icons.star, color: Colors.amber, size: 14));
      // Adiciona estrelas completas (ícone de estrela) à lista.
    }

    if (hasHalfStar) {
      stars.add(Icon(Icons.star_half, color: Colors.amber, size: 14));
      // Se houver meia estrela, adiciona um ícone de meia estrela à lista.
    }

    while (stars.length < 5) {
      stars.add(Icon(Icons.star_border, color: Colors.amber, size: 14));
      // Preenche as estrelas restantes com ícones de estrela vazia, até que haja 5 estrelas no total.
    }

    return Row(children: stars);
    // Retorna uma linha de ícones de estrelas.
  }
}

class FavoriteIcon extends StatefulWidget {
// Define uma classe StatefulWidget chamada FavoriteIcon. Um StatefulWidget é um widget que possui estado interno mutável.

  final int initialReviews;
  // Atributo que armazena o número inicial de avaliações.

  final ValueChanged<int> onFavoriteChanged;
  // Callback que é chamado quando o estado de favorito muda, passando o novo número de avaliações.

  const FavoriteIcon({required this.initialReviews, required this.onFavoriteChanged});
  // Construtor da classe FavoriteIcon, que inicializa os atributos acima.

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
  // Cria uma instância de _FavoriteIconState, que é a classe de estado associada a este widget.
}

class _FavoriteIconState extends State<FavoriteIcon> {
// Classe de estado associada a FavoriteIcon, onde o estado interno é gerenciado.

  bool isFavorite = false;
  // Variável que armazena se o local foi marcado como favorito ou não.

  late int reviews;
  // Variável que armazena o número de avaliações, inicializada mais tarde.

  @override
  void initState() {
    super.initState();
    // Chama o initState do pai para garantir que a inicialização básica aconteça.

    reviews = widget.initialReviews;
    // Inicializa o número de avaliações com o valor passado no widget pai.
  }

  @override
  Widget build(BuildContext context) {
    // Método build, responsável por construir o widget.

    return GestureDetector(
      // Retorna um widget GestureDetector, que detecta gestos, como toques.

      onTap: () {
        setState(() {
          // Quando o ícone é tocado, o estado do widget é alterado.

          isFavorite = !isFavorite;
          // Alterna o estado de favorito (se estava favorito, agora não está, e vice-versa).

          reviews = isFavorite ? reviews + 1 : reviews - 1;
          // Atualiza o número de avaliações: se foi marcado como favorito, incrementa; se foi desmarcado, decrementa.

          widget.onFavoriteChanged(reviews);
          // Chama o callback onFavoriteChanged, passando o novo número de avaliações.
        });
      },
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        // Define o ícone a ser exibido: um coração cheio se for favorito, ou um coração vazio se não for.

        color: isFavorite ? Colors.red : Colors.white,
        // Define a cor do ícone: vermelho se for favorito, branco se não for.
      ),
    );
  }
}
