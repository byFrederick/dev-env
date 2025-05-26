# Developer Environment for demo-webapp and demo-api apps

## Contents

- [Description](#description)
- [Setup](#setup)
- [Usage](#usage)
    - [Examples](#examples)
- [Things I'd have improved if I had more time](#things-id-have-improved-if-i-had-more-time)

## Description

Local development environment for the apps: demo-api and demo-webapp built using Docker Compose. You’ve got three services: an API built from services/api exposing its port (default 3001) for the frontend, a frontend app built from services/webapp serving on port 3000, and a PostgreSQL database that loads your init scripts and persists data. They all share the same Docker network, use the .env file for configuration, and keep dependencies and data isolated in named volumes.

## Setup

To set the environment up, follow this instructions:

```bash
curl -s -L https://github.com/byFrederick/dev-env/archive/refs/tags/v0.0.1.tar.gz | tar xz
mv {YOUR-DEMO-API-REPO-FOLDER} dev-env-0.0.1/services/api
mv {YOUR-WEBAPP-REPO-FOLDER} dev-env-0.0.1/services/webapp
cd dev-env-0.0.1/
./startup.sh
```

Your environment will be up and running.

## Usage

Now you can start and stop the environment for demo-api and demo-webapp on demand. Also, you can install dependencies on each app's container.

### Examples

Start the environment:

```bash
docker compose up -d --build
```

Install a dependency:

```bash
docker compose exec <webapp | api> npm install <pkg-name> --save
```

Stop the environment:

```bash
docker compose down
```

## Things I'd have improved if I had more time

- One .env file per service instead of a single .env for eveyrything
- Not relying on hard-coded paths. Update the setup script so it uses env var to detect each app's Git repo path on the developer's workstation, copy the right Dockerfile into each app folder, use that folder as the docker build context and mounts volumes directly from those local paths to the containers
- Modify the setup script to make docker run as a nonroot user, in those cases when the developer doesn't docker installed and it's installed using the startup script