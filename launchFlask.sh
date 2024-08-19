#!/bin/bash

cd /home/ubuntu/server
source .env
source .venv/bin/activate
gunicorn manage:app
