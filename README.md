# TeamSpeak 3 Server Docker

This repository contains the configuration to run a TeamSpeak 3 server using Docker and MariaDB as the database.

## Overview

The project uses two services:
- **TeamSpeak 3**: A voice communication server.
- **MariaDB**: A database to store the TeamSpeak server's information.

Communication between the services is done through a custom Docker network called `teamspeak-net`.

---

## Project Structure

- `teamspeak`: Contains the TeamSpeak 3 server image.
- `db`: Contains the MariaDB database image.
- **Volumes**: Persistent data for TeamSpeak and MariaDB is stored in local volumes to ensure data persistence.

---

## Prerequisites

1. Install `Docker`.

---

## Configuration

Before starting the services, configure the environment variables:

1. Create a `.env` file in the same directory as `docker-compose.yml` with the following variables:
   ```env
   MYSQL_PASSWORD=your_secure_password
   MYSQL_DATABASE=teamspeak_db