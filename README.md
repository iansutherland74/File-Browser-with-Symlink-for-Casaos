# File Browser for CasaOS

This repository provides a ready-to-edit File Browser setup for CasaOS, including automatic symlink creation at container startup.

## What this includes

- Docker Compose service for `filebrowser/filebrowser`.
- Persistent database/config mounts.
- A dedicated startup script (`scripts/create-symlinks.sh`) that creates links under `/srv/links`.

## Symlink behavior

The symlink script creates:

- `/srv/links/media` -> `/mnt/media`
- `/srv/links/downloads` -> `/mnt/downloads`

In this repo those destinations are mounted from:

- `./media` -> `/mnt/media`
- `./downloads` -> `/mnt/downloads`

If you want different links, edit `scripts/create-symlinks.sh` and matching mounts in `docker-compose.yml`.

## Run

```bash
docker compose up -d
```
