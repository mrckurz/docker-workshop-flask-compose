# 🚀 Flask + MySQL Integration with Docker Compose

This project demonstrates a Flask web application that connects to a MySQL 8 database using Docker Compose. It includes everything you need to start working with multi-container applications.

---

## 📦 What's Included?

- A Flask app that queries the MySQL server and returns the server version
- A MySQL 8 database container
- A Dockerfile for the Flask app
- A `docker-compose.yml` file orchestrating both services

---

## 🧰 Prerequisites

Ensure the following are installed on your system:

### 🔹 macOS
- Docker Desktop: https://www.docker.com/products/docker-desktop
- Check: `docker --version` and `docker compose version`

### 🔹 Windows
- Docker Desktop for Windows (with WSL2 backend recommended)
- Check in PowerShell: `docker --version` and `docker compose version`

### 🔹 Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install docker.io docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
```

Verify:
```bash
docker --version
docker compose version
```

---

## ▶️ How to Use This Project

### Step 1: Clone or unzip the project folder
```bash
cd compose-flask-app
```

---

### Step 2: Build and run the services
```bash
docker compose up -d --build
```

This will:
- Build the Flask image with `mysql-connector-python` installed
- Start the Flask service (on port 5001)
- Start the MySQL 8 database container in the background

---

### Step 3: Visit the Flask app
Open in your browser:
```
http://localhost:5001
```

You should see something like:
> MySQL server version: 8.0.36

---

### Step 4: Interact and explore
```bash
docker compose ps                       # View running services
docker logs compose-flask-app-web-1    # View Flask logs
docker exec -it compose-flask-app-web-1 sh   # Enter Flask container shell
```

---

### Step 5: Tear it down
```bash
docker compose down
```

This stops and removes all containers, networks, and volumes.

---

## 📘 How It Works

- The Flask app uses the `mysql-connector-python` package to connect to the database.
- Hostname `db` in the Compose file refers to the MySQL service.
- Flask executes a simple query: `SELECT VERSION()` to retrieve the MySQL version.

---

## 🧩 Expand It

You can extend this example by:
- Creating tables and inserting sample data
- Using SQLAlchemy for ORM
- Exposing database interaction through Flask routes

---

Happy hacking! 🐳🧡
