import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importando os ícones FontAwesome
import '/widgets/custom_button.dart'; // Importando o widget CustomButton
import '/widgets/custom_textfield.dart'; // Importando o widget CustomTextField

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Permite a rolagem quando o teclado está visível
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50), // Espaço para centralizar os itens
              // Título da tela
              const Text(
                'Seja bem vindo ao  Projeto de Wasgton e Leonardo',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold), // Aumentei o tamanho da fonte dos labels
              ),
              const SizedBox(height: 12),
              // Subtítulo da tela
              const Text(
                'Faça login para continuar nosso aplicativo',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32), // Ajuste de espaçamento
              // Campo de texto para e-mail
              CustomTextField(
                hintText: 'SeuEmailDeLogin@gmail.com',
              ),
              SizedBox(height: 20), // Aumentei o espaçamento entre os campos de texto e labels
              // Campo de texto para senha
              CustomTextField(
                hintText: '************',
                obscureText: true,
              ),
              SizedBox(height: 20),
              // Link para recuperação de senha
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(height: 32), // Ajuste de espaçamento
              // Botão de login
              CustomButton(
                text: 'Entrar',
                onPressed: () {
                  Navigator.pushNamed(context, '/integradoCarrossel'); // Navega para a tela inicial ao clicar
                },
              ),
              SizedBox(height: 32), // Ajuste de espaçamento
              // Texto de inscrição
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem uma conta? "),
                  Text(
                    "Inscrever-se",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 50), // Espaço para centralizar os itens

              SizedBox(height: 80), // Espaçamento de 80px acima dos ícones

              // Ícones de redes sociais
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    icon: FontAwesomeIcons.facebookF,
                    color: Colors.blue,
                    size: 40, // Aumentei o tamanho do ícone
                  ),
                  SizedBox(width: 24), // Aumentei o espaçamento entre os ícones
                  SocialIcon(
                    icon: FontAwesomeIcons.instagram,
                    color: Colors.pink,
                    size: 40, // Aumentei o tamanho do ícone
                  ),
                  SizedBox(width: 24), // Aumentei o espaçamento entre os ícones
                  SocialIcon(
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.lightBlue,
                    size: 40, // Aumentei o tamanho do ícone
                  ),
                ],
              ),
              SizedBox(height: 16), // Espaço menor para aproximar os ícones do rodapé
            ],
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  SocialIcon({required this.icon, required this.color, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 16, // Ajuste para corresponder ao tamanho do ícone
      height: size + 16, // Ajuste para corresponder ao tamanho do ícone
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.1),
      ),
      child: Icon(icon, color: color, size: size), // Tamanho do ícone ajustado
    );
  }
}
