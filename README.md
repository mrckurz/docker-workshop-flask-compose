# 🚀 Flask + MySQL Integration with Docker Compose

This project demonstrates a Flask web application that connects to a MySQL 8 database using Docker Compose. It's a great starting point for learning multi-container development workflows.

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
- Check with: `docker --version` and `docker compose version`

### 🔹 Windows
- Docker Desktop for Windows (WSL2 backend recommended)
- Check with PowerShell: `docker --version` and `docker compose version`

### 🔹 Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install docker.io docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker
```
Then verify:
```bash
docker --version
docker compose version
```

---

## ▶️ How to Run This Project Locally

### Step 1: Clone the Repository
```bash
git clone https://github.com/your-username/compose-flask-app.git
cd compose-flask-app
```

Or unzip the provided archive and `cd` into it.

---

### Step 2: Build the Project
```bash
docker compose build
```

This builds the custom Flask image with `mysql-connector-python`.

---

### Step 3: Start the Services
```bash
docker compose up -d
```

This runs both:
- The **Flask web app** (on port `5002`)
- The **MySQL database** container in the background

---

### Step 4: Open the App
Visit:
```
http://localhost:5002
```

You should see:
> MySQL server version: 8.0.36

---

## 🧪 Inspect the Environment via CLI

- Check running containers:
  ```bash
  docker compose ps
  ```

- View container logs:
  ```bash
  docker compose logs
  docker logs compose-flask-app-web-1
  ```

- Access the container shell:
  ```bash
  docker exec -it compose-flask-app-web-1 sh
  ```

---

### Step 5: Stop Everything
```bash
docker compose down
```

This stops and removes all containers, networks, and volumes.

---

## 📘 How It Works

- The Flask app connects to MySQL using `mysql-connector-python`
- Hostname `db` refers to the MySQL container
- The Flask route `/` runs a query: `SELECT VERSION()` and returns the result

---

## 💡 You Can Extend This

- Add Flask routes that read/write data to MySQL
- Use SQLAlchemy to interact with the database using models
- Preload tables using SQL scripts or Docker entrypoints

---

Happy coding with Docker Compose! 🐳🔥
