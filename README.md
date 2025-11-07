# circuito_rpg
A new Flutter project.
## Getting Started
This project is a starting point for a Flutter application.
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```

# ⚔️ Circuito RPG — Interface Flutter

Uma interface híbrida desenvolvida em **Flutter (Dart)** para o projeto **Circuito RPG**. Este repositório contém a camada de UI/Front-end construída com Flutter, organizada com foco em componentização e Atomic Design.

---

## 🔖 Sobre este repositório

Nome do pacote: `circuito_rpg`

Versão do pacote: `1.0.0+1`

SDK Dart compatível (do `pubspec.yaml`): `^3.9.0`

Dependências principais usadas no projeto (trecho do `pubspec.yaml`):

- `carousel_slider` — carrossel de imagens
- `get_it` — service locator / injeção de dependência
- `provider` — gerenciamento de estado
- `http` — requisições REST
- `dartz` — utilitários funcionais (Either, Option)

---

## 🚀 Tecnologias

- Flutter (Dart)
- Material Design
- Integração prevista com backend Laravel/PHP (API REST)

---

## 📁 Estrutura principal do projeto

Arquivos e pastas relevantes (resumo):

```
lib/
├── main.dart                             # Entrada da aplicação
├── core/                                 # Widgets e utilitários reutilizáveis
│   ├── widgets/
│   │   ├── app_logo.dart
│   │   ├── custom_card.dart
│   │   ├── custom_text_field.dart
│   │   ├── custom_tab.dart
│   │   ├── custom_icon_button.dart
│   │   ├── primary_button.dart
│   │   ├── secondary_button.dart
│   │   └── section_title.dart
│   └── utils/
│       └── validators.dart
├── features/
│   ├── auth/
│   │   ├── presentation/
│   │   │   ├── pages/auth_page.dart
│   │   │   ├── widgets/auth_card.dart
│   │   │   └── viewmodels/auth_viewmodel.dart
│   │   └── domain/ (usecases, entities, repositories)
│   ├── info/
│   │   └── presentation/
│   │       ├── pages/info_page.dart
│   │       └── styles/info_style.dart
│   └── perfil/
│       └── presentation/
│           ├── pages/perfil_page.dart
│           └── organisms/profile_page_body.dart
```

Assets principais (declarados em `pubspec.yaml`):

- `assets/images/banner.jpg`
- `assets/images/sobre.jpg`
- `assets/images/export.jpg`

---

## 🖥️ Páginas / Componentes principais

- `auth_page.dart` / `auth_card.dart` — telas de autenticação (Login / Registro) usando um `AuthCard` central.
- `info_page.dart` — página de apresentação com carrossel e seções informativas.
- `perfil_page.dart` — página para visualização/edição do perfil do usuário.
- `core/widgets/*` — widgets atômicos reutilizáveis (botões, campos, cards, logos).
- `AppResponsive` — utilitário para renderizar views diferentes em mobile/tablet/desktop (presente em `info_style.dart`).

---

## ⚙️ Como rodar (Windows / PowerShell)

1) Certifique-se de ter Flutter instalado e o SDK configurado.

2) Instale as dependências:

```powershell
flutter pub get
```

3) Rodar em um dispositivo ou emulador conectado:

```powershell
flutter run
```

4) Build para produção (Web):

```powershell
flutter build web
```

Observação: para builds Android/iOS siga os passos padrões do Flutter (configurar SDKs, certificados, signing, etc.).

---

## 🧪 Análise e testes

- Analisar código (lint/erros):

```powershell
flutter analyze
```

- Testes (se existirem testes definidos):

```powershell
flutter test
```

---

## 🔌 Integração Backend (nota)

O front foi pensado para consumir uma API REST. Integrações previstas:

- Laravel (PHP) como backend para CRUDs de entidades do RPG (personagens, criaturas, equipamentos, magias etc.).
- Autenticação via endpoints REST, uso de tokens (JWT/Session) a definir.

Se desejar, posso adicionar exemplos de contratos de API (endpoints, payloads) a este README.

---

## 🧭 Convenções e padrões

- Atomic Design (componentização em widgets atômicos, moléculas e organismos)
- Arquitetura por features (cada feature contém domínio/presentation/etc.)
- Uso de `provider`/`get_it` para gerenciamento de estado e injeção de dependência

---

## ✍️ Autor

Frost Salazar

---

## ✅ Próximos passos (opcionais)

1. Adicionar badges (Flutter version, build status, licensa) no topo do README.
2. Incluir exemplos de API e snippets de uso (ex.: autenticação, obter perfil).
3. Adicionar um arquivo `CONTRIBUTING.md` se o repositório for aberto a colaboradores.

Quer que eu adicione badges automáticos (build, versão Flutter, linguagem, licença) agora?

