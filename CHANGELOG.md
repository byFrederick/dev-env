# CHANGELOG

## [Commit: [6c62ffe](https://github.com/byFrederick/dev-env/commit/6c62ffee02a35edfe9f3914a433befa6d5e85492)] - 2025-05-24

- Fixed startup.sh

---

## [Commit: [15d7d05](https://github.com/byFrederick/dev-env/commit/15d7d059963056103a469941f42041359727b969)] - 2025-05-24

- Deleted repo path env vars
- Updated compose.yaml to not use repo path env vars

---

## [Commit: [28e3cad](https://github.com/byFrederick/dev-env/commit/28e3cad3ce8038c074657be2f9d0a93a2436530d)] - 2025-05-24

- Added repo path env vars

---

## [Commit: [7a4c383](https://github.com/byFrederick/dev-env/commit/7a4c383adc91b15b8f3bb532fd4372b01d8207ce)] - 2025-05-23

- Updated CHANGELOG

---

## [Commit: [736e3f5](https://github.com/byFrederick/dev-env/commit/736e3f59dd5c46e3b7b2b55a2af3b5740c990ebd)] - 2025-05-23

- Fixed api Dockerfile base image to use the version given .tool-versions file
- DB volume configured as external volume
- Fixed startup.sh script to send stderr to /dev/null and added the creation of db volume

---

## [Commit: [37d3d1f](https://github.com/byFrederick/dev-env/commit/37d3d1f7fc81e649a891d398b2313d2fc9ec53cb)] - 2025-05-22

- Added [startup.sh] script which installs docker and starts the environment
- Added CHANGELOG.md
- Changed postgres image tag on docker compose

### Sources

- https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
- https://serverfault.com/questions/596953/portable-daemon-management-from-bash-sysvinit-upstart-systemd

---

## [Commit: [7dc22bd](https://github.com/byFrederick/dev-env/commit/7dc22bd7e944ddb626788138876be23a78b516be)] - 2025-05-22

- Added postgres service on docker compose
- Added healthcheck to postgres

> **Note:** I didn't add healthcheck to the apps (api and webapp) because this is a dev environment.

### Sources

- https://hub.docker.com/_/postgres
- https://docs.docker.com/compose/how-tos/startup-order/

---

## [Commit: [88aa07e](https://github.com/byFrederick/dev-env/commit/88aa07e07eee513e9f4106169eeb879fa9fcca03)] - 2025-05-22

- Improvement of folder structure (creation of service folder)
- Merged .env files of each app and moved it to root directory
- Configured each service on docker compose to use the .env file
- Added .env.example file on root directory

---

## [Commit: [845a330](https://github.com/byFrederick/dev-env/commit/845a330ef4d047aed142e323fcaafe4b7c708bf8)] - 2025-05-22

- Added api Dockerfile
- Added api service on compose.yaml

### Sources

- https://www.docker.com/blog/9-tips-for-containerizing-your-node-js-application/

---

## [Commit: [4c35929](https://github.com/byFrederick/dev-env/commit/4c35929976d01fce7e8f190fe9c57ad442f5ea5d)] - 2025-05-22

- Added webapp Dockerfile
- Added webapp service on compose.yaml

### Sources

- https://www.docker.com/blog/how-to-dockerize-react-app/

---

## [Commit: [22bc7bb](https://github.com/byFrederick/dev-env/commit/22bc7bb2cebdb1fc0fd1a72b2e0732881d7acdd9)] - 2025-05-22

- Initialize folder structure