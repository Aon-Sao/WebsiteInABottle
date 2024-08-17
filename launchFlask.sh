#!/bin/bash

cd /home/ubuntu/server
source .venv/bin/activate
gunicorn manage:app
