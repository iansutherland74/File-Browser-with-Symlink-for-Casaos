# File Browser for CasaOS

This repository provides a ready-to-edit File Browser setup for CasaOS, including automatic symlink creation at container startup.

## What this includes

- Docker Compose service for `filebrowser/filebrowser`.
- Persistent database/config mounts.
- Automatic symlink creation under `/srv/links` so extra folders appear in File Browser.

## Symlink behavior

When the container starts, it creates these symlinks:

- `/srv/links/media` -> `/mnt/media`
- `/srv/links/downloads` -> `/mnt/downloads`

In this repo those destinations are mounted from:

- `./media` -> `/mnt/media`
- `./downloads` -> `/mnt/downloads`

Adjust these mounts and links in `docker-compose.yml` to match your CasaOS host paths.

## Run

```bash
docker compose up -d
```
