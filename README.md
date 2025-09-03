# 🌍 Guia de Turismo — Flutter & Dart  

💻 **Projeto final da disciplina de Programação Mobile**  
📱 Aplicativo desenvolvido em **Flutter** com **Dart**, focado em apresentar destinos turísticos de forma interativa.  

O sistema explora conceitos de:  
- 🎨 **Interfaces gráficas** com `StatelessWidget` e `StatefulWidget`  
- 🔄 **Gerenciamento de estado** (`setState`, `Provider`)  
- 📝 **Formulários e validação**  
- 🌐 **Consumo de APIs** (requisições HTTP GET/POST)  
- 🗄️ **Persistência de dados** com **SQLite (sqflite)**  
- 🎯 **Prototipação no Figma**  
- 🧩 **Componentização de Widgets reutilizáveis**  

---

## 🚀 Objetivo do projeto  
O **Guia de Turismo** tem como objetivo fornecer informações rápidas e organizadas sobre destinos turísticos populares, permitindo que o usuário:  
- Explore os destinos mais visitados.  
- Visualize detalhes com fotos, localização, avaliações e preços.  
- Acesse informações salvas em banco de dados local.  
- Interaja com a interface de forma simples e intuitiva.  

---

## 📂 Estrutura das Telas (Pages)  

### 🔑 **LoginPage**  
- Tela inicial do app.  
- Formulário com campos personalizados (`CustomTextField`) e botão estilizado (`CustomButton`).  
- Objetivo: autenticar ou simular acesso do usuário.  

---

### 🏠 **HomePage**  
- Tela principal após login.  
- Componentes:  
  - Barra superior com **foto de perfil + nome**.  
  - Notificações (ícone interativo).  
  - Seção **"Melhor destino"** em carrossel.  
- Objetivo: servir como hub de navegação para os destinos.  

---

### 🎡 **IntegradoCarrosel**  
- Tela de carrossel de imagens.  
- Exibe os destinos em destaque de forma interativa.  

---

### 🏰 **DetalhesMadriPage**  
- Mostra informações detalhadas sobre **Madri (Espanha)**.  
- Componentes:  
  - Foto em destaque.  
  - Nome do destino, localização e avaliações.  
  - Carrossel de imagens adicionais.  
  - Descrição do local.  
  - Botão **“Agende agora”**.  

---

### 🗼 **DetalhesParisPage**  
- Mesma estrutura da tela de Madri, mas para **Paris (França)**.  
- Inclui fotos, preços, avaliação e botão de agendamento.  

---

### 📍 **LugaresPopularesPage**  
- Lista com outros destinos turísticos cadastrados.  
- Os dados vêm do **SQLite (DataBaseTurismo)**.  

---

### 👤 **PerfilPage**  
- Exibe informações do usuário.  
- Pode ser expandida para permitir edição de perfil.  

---

### 💬 **MensagensPage**  
- Tela para exibir notificações ou mensagens do app.  
- Objetivo: comunicação e lembretes para o usuário.  

---

## 🗄️ Banco de Dados Local — SQLite  
Arquivo: `database_turismo.dart`  
- Tabela: **places**  
- Campos: `id`, `name`, `location`, `reviews`  
- Dados iniciais: Madri, Paris, Lima, Cairo, Ji-Paraná e Nova York.  
- Funções: **insert**, **queryAllPlaces**, **updatePlace**.  

---

## 🧩 Componentes Reutilizáveis  
- **CustomButton**: botão estilizado com largura total e bordas arredondadas.  
- **CustomTextField**: campo de texto personalizado com suporte a senha (`obscureText`).  

---

## 📸 Demonstração Visual  
👉 Aqui você pode adicionar **prints das telas** (ou gifs) para que quem acessar o repositório veja o app em funcionamento.  


