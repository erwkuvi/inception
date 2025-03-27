# Inception

This project aims to broaden your knowledge of system administration by using Docker. To virtualize several Docker
images, creating them in a new personal virtual machine.

The Inception project at 42 School is an advanced DevOps and system administration challenge that introduces students to Docker, containerization, and orchestration. The goal is to set up a multi-container system using Docker Compose, where different services work together in an isolated environment.

### Objective

- Learn Docker by containerizing different services.
- Use Docker Compose to manage multiple containers.
- Implement a WordPress website with a MariaDB database and Nginx web server.
- Ensure data persistence using volumes.
- Set up networking between services securely.
- Use a non-root user for better security.

#### The structure:

```lua
+-- Docker
    +-- nginx
    +-- wordpress
    +-- mariadb
```

Each service runs in its own container, and they communicate over a custom network.

### Key Concepts & Challenges

#### Understanding Docker & Containers

- Each service (Nginx, WordPress, MariaDB) runs in an isolated container.
- Containers should be lightweight and efficient.

#### Docker Compose & Orchestration

- Use a docker-compose.yml file to define and manage multiple containers.
- Containers should restart automatically if they fail.

#### Setting Up Nginx (Web Server)

- Acts as a reverse proxy to handle incoming requests.
- Serves static files and routes requests to WordPress.

#### Deploying WordPress (CMS)

- Runs inside a separate container.
- Connects to MariaDB for storing blog data.

#### Configuring MariaDB (Database)

- Stores user credentials, posts, and WordPress settings.
- Must have persistent storage using volumes.

#### Volumes & Persistent Storage

- Ensures that data is not lost when containers restart.
- Stores WordPress files and database data.

#### Networking & Security

- Containers communicate through a private Docker network.
- Services should not be exposed to the public unless necessary.

### Required Technologies

1. Docker
2. Docker Compose
3. Nginx (Web server & Reverse Proxy)
4. WordPress (CMS)
5. MariaDB (Database)



![Inception](https://tenor.com/search/inception-gifs)
