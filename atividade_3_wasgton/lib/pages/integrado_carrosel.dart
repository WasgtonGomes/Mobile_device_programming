import 'package:atividade_3_wasgton/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class IntegradoCarrosel extends StatefulWidget {
  @override
  _IntegradoCarroselState createState() => _IntegradoCarroselState();
}

class _IntegradoCarroselState extends State<IntegradoCarrosel> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: [
          // Primeira página do carrossel
          buildPage(
            context,
            'A vida é curta e o mundo é \nvasto',
            'Na Friends tours and travel, personalizamos passeios educacionais confiáveis para destinos em todo o mundo',
            'https://www.impacteurope.net/sites/www.evpa.ngo/files/idea-photo/evpa-transformative-finance-deep-dive_1.jpg',
            0, // Índice da página atual
          ),
          // Segunda página do carrossel
          buildPage(
            context,
            'É um grande mundo lá fora, vá explorar',
            'Para aproveitar ao máximo sua aventura você só precisa sair e ir para onde quiser. Estamos esperando por você',
            'https://cdn.dribbble.com/userupload/13418462/file/original-05968ea127ed71910650206cc258b242.jpg?resize=1024x767',
            1, // Índice da página atual
          ),
          // Terceira página do carrossel
          buildPage(
            context,
            'As pessoas não fazem viagens, as viagens fazem as pessoas',
            'Na Friends tours and travel, personalizamos passeios educacionais confiáveis para destinos em todo o mundo',
            'https://cdn.dribbble.com/users/1200499/screenshots/15211051/media/7c0c758bcc868fbaebd06e37e7003c47.jpg?resize=768x576&vertical=center',
            2, // Índice da página atual
          ),
        ],
      ),
    );
  }

  // Método para construir cada página do carrossel
  Widget buildPage(BuildContext context, String title, String subtitle, String imageUrl, int pageIndex) {
    return Padding(
      padding: const EdgeInsets.all(0), // Zerei o padding da tela
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinha os textos e botões à esquerda
        children: [
          // Imagem com bordas arredondadas que ocupa 50% da altura da tela
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              height: MediaQuery.of(context).size.height * 0.5, // Ocupa 50% da altura da tela
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (pageIndex == 0) ...[
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'A vida é curta e o mundo é ',
                          style: TextStyle(
                            fontSize: 32, 
                            fontWeight: FontWeight.bold, 
                            fontFamily: 'Roboto', 
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'vasto',
                          style: TextStyle(
                            fontSize: 32, 
                            fontWeight: FontWeight.bold, 
                            fontFamily: 'Roboto', 
                            color: Color(0xFFFF7029), // Cor FF7029
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 0), // Pequeno espaçamento entre o texto e a imagem
                  Align(
                    alignment: Alignment.centerRight, // Alinha a imagem à direita
                    child: Padding(
                      padding: const EdgeInsets.only(right: 80.0), // Espaçamento de 80px à direita
                      child: Image.asset(
                        'lib/imagens/tela01.png', // Caminho da imagem
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ] else if (pageIndex == 1) ...[
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'É um grande mundo lá fora, vá ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'explorar',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Color(0xFFFF7029), // Cor FF7029
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 0), // Pequeno espaçamento entre o texto e a imagem
                  Align(
                    alignment: Alignment.centerRight, // Alinha a imagem à direita
                    child: Padding(
                      padding: const EdgeInsets.only(right: 80.0), // Espaçamento de 80px à direita
                      child: Image.asset(
                        'lib/imagens/tela0203.png', // Caminho da nova imagem
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ] else if (pageIndex == 2) ...[
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'As pessoas não fazem viagens, as viagens fazem as  ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'pessoas',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Color(0xFFFF7029), // Cor FF7029
                          ),
                        ),
                        
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 0), // Pequeno espaçamento entre o texto e a imagem
                  Align(
                    alignment: Alignment.centerRight, // Alinha a imagem à direita
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60.0), // Espaçamento de 80px à direita
                      child: Image.asset(
                        'lib/imagens/tela0203.png', // Caminho da nova imagem
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                SizedBox(height: 12), // Aumentei o espaçamento
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontFamily: 'Roboto' // Aplica a fonte Roboto
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24), // Ajuste de espaçamento
                // Indicadores do carrossel entre o texto e o botão
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => buildIndicator(index)),
                ),
                SizedBox(height: 24), // Ajuste de espaçamento
                CustomButton(
                  text: pageIndex == 2 ? 'Próximo' : 'Iniciar',
                  onPressed: () {
                    if (pageIndex == 2) {
                      // Navega para a página "home" ao clicar no botão na última página
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      // Avança para a próxima página no carrossel
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir os indicadores
  Widget buildIndicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: _currentPageIndex == index ? 12.0 : 8.0,
      height: _currentPageIndex == index ? 12.0 : 8.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPageIndex == index ? Colors.blue : Colors.grey,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
