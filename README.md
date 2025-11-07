# ⚔️ Circuito RPG — Interface Flutter

Aplicação mobile multiplataforma desenvolvida em **Flutter (Dart)** como parte do Projeto Integrador da disciplina de **Desenvolvimento Mobile**.  
Este repositório representa a **camada de interface e lógica de apresentação (Frontend)** do sistema *Circuito RPG* — uma plataforma para gerenciamento de fichas, perfis e simulações de RPG.

---

## 🎯 Objetivo do Projeto

O **Circuito RPG** busca oferecer uma interface moderna, acessível e responsiva para jogadores e mestres de RPG criarem e gerenciarem fichas, personagens, criaturas e magias.  
A aplicação prioriza **usabilidade, modularidade e performance**, aplicando os princípios de **Clean Architecture e MVVM**.

---

## 🏗️ Arquitetura e Estrutura

O projeto segue o padrão **Clean Architecture**, separando responsabilidades em três camadas:

```

lib/
├── core/        # Recursos compartilhados (widgets, estilos, utilitários, injeção)
├── features/    # Funcionalidades principais (auth, info, perfil)
│   ├── data/      → Fontes de dados e repositórios
│   ├── domain/    → Entidades e casos de uso (usecases)
│   └── presentation/ → Telas, viewmodels e widgets
└── main.dart    # Ponto de entrada e configuração de rotas

````

📐 **Padrões aplicados**
- **MVVM (Model-View-ViewModel)** — desacopla UI e lógica de negócio.
- **Dependency Injection** com `get_it`.
- **Gerenciamento de estado reativo** com `provider`.

---

## 🧠 Gerenciamento de Estado e Injeção de Dependência

- **Provider** — utilizado para gerenciar o estado das telas e ViewModels (`AuthViewModel`, `ProfileViewModel`).
- **GetIt** — usado como *Service Locator* para injetar dependências (repositórios, usecases, data sources).
- Essa combinação garante desacoplamento entre camadas e facilita testes unitários.

---

## 🧪 Testes Automatizados

Foram implementados **testes unitários e de widget**, conforme solicitado na Entrega Parcial 1.

### Testes Unitários
Verificam a lógica de negócio, como:
- Validação de campos (`Validators`)
- Casos de uso (`LoginUser`)
- Repositórios (`AuthRepositoryImpl`)

### Testes de Widget
Simulam interação do usuário em:
- Formulários de login (`LoginForm`)
- Renderização de componentes customizados (`CustomCard`, `CustomButton`)

### Executar os testes
```bash
flutter test
````

---

## 🧰 Tecnologias e Bibliotecas

* **Flutter** 3.9+
* **Provider** — gerenciamento de estado
* **GetIt** — injeção de dependência
* **HTTP** — integração REST
* **Dartz** — modelagem funcional (Either)
* **Carousel Slider** — carrosséis de conteúdo
* **Flutter Test** — testes unitários e de widget

---

## ⚙️ Execução do Projeto

### 1. Instalar dependências

```bash
flutter pub get
```

### 2. Executar em modo debug

```bash
flutter run
```

### 3. Analisar e rodar testes

```bash
flutter analyze
flutter test
```

---

## 📱 Telas Principais

| Tela             | Descrição                                                 |
| ---------------- | --------------------------------------------------------- |
| **Informações**  | Página inicial com carrossel e resumo das funcionalidades |
| **Autenticação** | Login e cadastro com formulários validados                |
| **Perfil**       | Edição de nome, email e bio com persistência simulada     |

---

## 🔮 Próximos Passos (Etapa Final)

* Integração completa com API REST (Laravel Backend)
* Autenticação com tokens JWT
* Salvamento remoto de perfis e fichas
* Adição de testes de integração e cobertura expandida
* Otimizações de performance e UI

---

## ✍️ Autores

**Frost Salazar**
---

## 🏁 Status da Entrega Parcial 1

| Critério                                 | Implementado |
| ---------------------------------------- | ------------ |
| Arquitetura MVVM / Clean                 | ✅            |
| Gerenciamento de Estado (Provider/GetIt) | ✅            |
| Testes Unitários e Widget                | ✅            |
| Estrutura Modular / Código Limpo         | ✅            |
| Documentação (README)                    | ✅            |

---

> Projeto acadêmico — Disciplina: **Desenvolvimento Mobile com Dart e Flutter**
> Entrega Parcial 1 (Arquitetura, Estado e Testes) — **07/11**