 Usuários REST API 🚀

API RESTful para gerenciamento de clientes de barbearias, construída com **Ruby on Rails**.  
Permite criar, visualizar, atualizar e deletar clientes de forma rápida e segura, retornando respostas em **JSON**.

---

## Funcionalidades

- `GET /api/v1/usuarios` → lista todos os clientes
- `GET /api/v1/usuarios/:id` → detalhes de um cliente
- `POST /api/v1/usuarios` → cria um novo cliente
- `PUT /api/v1/usuarios/:id` → atualiza cliente existente
- `DELETE /api/v1/usuarios/:id` → remove cliente

---

## Tecnologias

- Ruby on Rails  
- SQLite3  
- JSON  

---

## Rodando Localmente

```bash
git clone https://github.com/fiilipe-sh/usuarios-rest-api.git
cd usuarios-rest-api
bundle install
rails db:create db:migrate
rails server
A API estará disponível em: http://localhost:3000/api/v1/usuarios

💡 Dica: Senhas devem ser armazenadas com segurança (has_secure_password do Rails). API stateless, pronta para integração com front-end ou apps mobile.
