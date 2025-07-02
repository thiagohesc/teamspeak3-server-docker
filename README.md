# 🎧 TeamSpeak 3 + MariaDB com Docker

Este repositório configura um servidor **TeamSpeak 3** com banco de dados **MariaDB** via Docker, com persistência de dados e suporte à licença via variável de ambiente.

---

## ✅ Serviços incluídos

- **TeamSpeak 3 Server**
  - Porta de voz (UDP): `9987`
  - ServerQuery (Admin CLI): `10011`
  - Transferência de arquivos: `30033`
- **MariaDB 10.5**
  - Porta local: `127.0.0.1:3366 → 3306` (acesso somente local)

---

## 📁 Estrutura de arquivos

```
.
├── docker-compose.yml
├── .env
└── data/
    ├── teamspeak/
    │   └── data/
    └── mariadb/
        └── data/
```

---

## ⚙️ Como usar

### 1. Crie o arquivo `.env`

```env
MYSQL_PASSWORD=uma_senha_segura
MYSQL_DATABASE=teamspeak
```

### 2. Inicie os containers

```bash
docker compose up -d
```

### 3. Acesse o TeamSpeak

- Conecte ao IP do servidor na porta `9987` (padrão)
- A senha e o token de privilégio aparecerão nos logs:
  ```bash
  docker logs -f teamspeak
  ```

---

## 🔒 Segurança

- O banco MariaDB está acessível **somente localmente** (bind em `127.0.0.1`).
- A senha do banco está protegida via variáveis de ambiente `.env`.
- Dados do servidor e banco são persistidos nas pastas `./data`.

---

## 🧼 Encerrando e limpando

```bash
docker compose down
```

Para remover também os dados:

```bash
docker compose down -v
```

---

## 📚 Referências

- [TeamSpeak Docker Hub](https://hub.docker.com/_/teamspeak)
- [MariaDB Docker Hub](https://hub.docker.com/_/mariadb)