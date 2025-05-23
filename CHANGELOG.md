# CHANGELOG

## [Commit: 736e3f5] - 2025-05-23

- Fixed api Dockerfile base image to use the version given .tool-versions file
- DB volume configured as external volume
- Fixed [startup.sh](http://startup.sh) script to send stderr to /dev/null and added the creation of db volume

## [Commit: 37d3d1f] - 2025-05-22

- Added [startup.sh] script which installs docker and starts the environment
- Added CHANGELOG.md
- Changed postgres image tag on docker compose

### Sources

- https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
- https://serverfault.com/questions/596953/portable-daemon-management-from-bash-sysvinit-upstart-systemd

---

## [Commit: 7dc22bd] - 2025-05-22

- Added postgres service on docker compose
- Added healthcheck to postgres

> **Note:** I didn't add healthcheck to the apps (api and webapp) because this is a dev environment.

### Sources

- https://hub.docker.com/_/postgres
- https://docs.docker.com/compose/how-tos/startup-order/

---

## [Commit: 88aa07e] - 2025-05-22

- Improvement of folder structure (creation of service folder)
- Merged .env files of each app and moved it to root directory
- Configured each service on docker compose to use the .env file
- Added .env.example file on root directory

---

## [Commit: 845a330] - 2025-05-22

- Added api Dockerfile
- Added api service on compose.yaml

### Sources

- https://www.docker.com/blog/9-tips-for-containerizing-your-node-js-application/

---

## [Commit: 4c35929] - 2025-05-22

- Added webapp Dockerfile
- Added webapp service on compose.yaml

### Sources

- https://www.docker.com/blog/how-to-dockerize-react-app/

---

## [Commit: 22bc7bb] - 2025-05-22

- Initialize folder structure