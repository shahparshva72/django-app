#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Run migrations
uv run python manage.py migrate

# Collect static files
uv run python manage.py collectstatic --noinput 