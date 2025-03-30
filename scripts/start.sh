#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Start Gunicorn
uv run gunicorn core.wsgi:application --bind 0.0.0.0:8000 --workers 3 --timeout 120 