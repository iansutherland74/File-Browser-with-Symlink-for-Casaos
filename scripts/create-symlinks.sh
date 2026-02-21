#!/bin/sh
set -eu

mkdir -p /srv/links
ln -sfn /mnt/media /srv/links/media
ln -sfn /mnt/downloads /srv/links/downloads

echo "Symlinks prepared in /srv/links"
