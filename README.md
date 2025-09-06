# 🎮 Circuito RPG  

Projeto desenvolvido em **Flutter**, aplicando conceitos de **UI/UX**, **Atomic Design**, **consumo de API REST** e **validação de formulários**.  

---

## 📂 Estrutura do Projeto  

```

lib/
├── atomic/
│   ├── atoms/              # Átomos: elementos básicos e reutilizáveis
│   ├── molecules/          # Moléculas: combinações de átomos
│   ├── organisms/          # Organismos: blocos de UI mais complexos
│   ├── page/               # Páginas do app
│   ├── styles/             # Estilos e temas customizados
└── main.dart               # Arquivo principal com rotas

```

---

## 🚀 Funcionalidades Implementadas  

### 🔑 Autenticação  
- Tela de login e cadastro com abas.  
- Formulários validados com `TextFormField` e validadores básicos.  

### 👤 Perfil de Usuário  
- Tela de perfil com formulário de edição de informações pessoais.  
- Campos: **nome de usuário**, **e-mail** e **biografia**.  

### 📖 Página de Informações  
- Banner interativo com overlay.  
- Sessão **“Sobre o Projeto”**.  
- **Carrossel de funcionalidades** usando `carousel_slider`.  
- Tecnologias utilizadas listadas dinamicamente.  
- Status do projeto com checklists.  
- Rodapé responsivo.  

---

## 🎨 Melhorias de UI/UX  

### ⚛️ Atomic Design  
- **8 Átomos** (botões, inputs, ícones, textos etc.)  
- **4 Moléculas** (forms de login, registro, perfil e listagem de API)  
- **2 Organismos** (auth card e corpo da página de perfil)  

### ✨ Microinterações  
- Uso de **InkWell** / **GestureDetector** em botões.  
- Feedback visual em `ElevatedButton`, `OutlinedButton` e `IconButton`.  

### ♿ Acessibilidade  
- Contraste adequado entre cores (escuro + amarelo destaque).  
- Uso de fontes legíveis e espaçamento consistente.  
- Estrutura semântica clara nos formulários.  

---

## 🌐 Consumo de API  

- Integração com API pública simulada (`ApiListTile`).  
- Uso de **FutureBuilder** para lidar com dados assíncronos.  
- Exibição de resultados em **cards reutilizáveis**.  

---

## 📝 Formulários e Validação  

- Implementados com `TextFormField`.  
- Pelo menos **3 campos** em cada formulário:  
  - **Login**: Email, Senha  
  - **Cadastro**: Nome, Email, Senha, Confirmar Senha  
  - **Perfil**: Nome de Usuário, Email, Biografia  
- Validação com mensagens de erro personalizadas.  

---

## 📦 Tecnologias Utilizadas  

- **Flutter** (UI cross-platform)  
- **carousel_slider** (carrosséis dinâmicos)  
- **Material Design** (componentes visuais e acessibilidade)  

---