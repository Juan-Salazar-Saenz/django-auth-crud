#!/usr/bin/env bash
# exit on error

set -o errexit

poetry install

python manage.py collectstatic --on-input
python manage.py migrate