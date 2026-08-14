#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"

echo "Deploying website files..."
find . -maxdepth 1 -type f \
    ! -name 'deploy.sh' \
    ! -name 'LICENSE' \
    ! -name '.*' \
    -exec cp -f {} /var/www/html/ \;

chown -R www-data:www-data /var/www/html/

echo "Done."
